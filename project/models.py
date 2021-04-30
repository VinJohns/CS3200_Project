from django.db import models
   
'''
    I don't think adding setters to the model class is needed because Django handles it
    Also, getters aren't really needed either as you 
    can use model.attribute to get whatever column value except
    for getting the values of many to many in player and video_game models
'''
    
# Each of these classes corresponds to a table I created in MySQL Workbench
# Developers Table
class Developer(models.Model):
    name = models.CharField(max_length=45, null=True, blank=True)
    headquarters_location = models.CharField(max_length=45, null=True, blank=True)
    founded = models.DateField(null=True, blank=True)
    number_of_employees = models.IntegerField(null=True, blank=True)
    website = models.CharField(max_length=45, null=True, unique=True, blank=True)
        
    class Meta:
        db_table = 'developers'
        
    def __str__(self):
        if self.name is None:
            return ''
        else:
            return self.name
    

# Platforms Table
class Platform(models.Model):
    name = models.CharField(max_length=45, null=True, blank=True)
        
    class Meta:
        db_table = 'platforms'
        
    def __str__(self):
        if self.name is None:
            return ''
        else:
            return self.name
    
    
# Genres Table for Enumeration
class Genre(models.Model):
    name = models.CharField(max_length=20, unique=True, primary_key=True)
        
    class Meta:
        db_table = 'genres'
        
    def __str__(self):
        if self.name is None:
            return ''
        else:
            return self.name.capitalize()
        

# Video_Games Table
class Video_Game(models.Model):
    name = models.CharField(max_length=45, null=True, blank=True)
    description = models.CharField(max_length=200, null=True, blank=True)
    release_date = models.DateField(null=True, blank=True)
    price = models.FloatField(null=True, blank=True)
    genre = models.ForeignKey(Genre, on_delete=models.CASCADE, db_column='genre', default=None, null=True, blank=True)
    developer = models.ForeignKey(Developer, on_delete=models.PROTECT, null=True, blank=True)
    platforms = models.ManyToManyField(Platform, through='Connection')
        
    class Meta:
        db_table = 'video_games'
        
    def __str__(self):
        if self.name is None:
            return ''
        else:
            return self.name
    
    
    def get_platforms(self):
        return [platform.name for platform in self.platforms.all()]

    
# Players Table
class Player(models.Model):
    first_name = models.CharField(max_length=45, null=True, blank=True)
    last_name = models.CharField(max_length=45, null=True, blank=True)
    username = models.CharField(max_length=45, null=True, unique=True, blank=True)
    password = models.CharField(max_length=45, null=True, blank=True)
    email = models.CharField(max_length=45, null=True, unique=True, blank=True)
    date_of_birth = models.DateField(null=True, blank=True)
    video_games = models.ManyToManyField(Video_Game, through='Library')
    
    class Meta:
        db_table = 'players'
        
    def __str__(self):
        if self.username is None:
            return ''
        else:
            return self.username
    
    def get_games(self):
        return [game.name for game in self.video_games.all()]



# Libraries Table
class Library(models.Model):
    player = models.ForeignKey(Player, on_delete=models.CASCADE, null=True, blank=True)
    game = models.ForeignKey(Video_Game, on_delete=models.CASCADE, null=True, blank=True)

    class Meta:
        db_table = 'libraries'
        

        
# Connections Table
class Connection(models.Model):
    game = models.ForeignKey(Video_Game, on_delete=models.CASCADE, null=True, blank=True)
    platform = models.ForeignKey(Platform, on_delete=models.CASCADE, null=True, blank=True)
        
    class Meta:
        db_table = 'connections'


    
    