from django.db import models
   
'''
    I don't think adding setters to the model class is needed
    Also, getters aren't really needed either as you 
    can use model.attribute to get whatever column value
'''
    
# Developers Table
class Developers(models.Model):
    name = models.CharField(max_length=45, null=True, blank=True)
    headquarters_location = models.CharField(max_length=45, null=True, blank=True)
    founded = models.DateField(null=True, blank=True)
    number_of_employees = models.IntegerField(null=True, blank=True)
    website = models.CharField(max_length=45, null=True, unique=True, blank=True)
        
    class Meta:
        db_table = 'developers'
        
    def __str__(self):
        return self.name
    

# Platforms Table
class Platforms(models.Model):
    name = models.CharField(max_length=45, null=True, blank=True)
        
    class Meta:
        db_table = 'platforms'
        
    def __str__(self):
        return self.name
    
    
# Genres Table for Enumeration
class Genres(models.Model):
    name = models.CharField(max_length=20, unique=True, primary_key=True)
        
    class Meta:
        db_table = 'genres'
        
    def __str__(self):
        return self.name.capitalize()
        

# Video_Games Table
class Video_Games(models.Model):
    name = models.CharField(max_length=45, null=True, blank=True)
    description = models.CharField(max_length=200, null=True, blank=True)
    release_date = models.DateField(null=True, blank=True)
    price = models.FloatField(null=True, blank=True)
    genre = models.ForeignKey(Genres, on_delete=models.CASCADE, db_column='genre', default=None, null=True, blank=True)
    developer = models.ForeignKey(Developers, on_delete=models.PROTECT, null=True, blank=True)
    platforms = models.ManyToManyField(Platforms, through='Connections')
        
    class Meta:
        db_table = 'video_games'
        
    def __str__(self):
        return self.name

    
# Players Table
class Players(models.Model):
    first_name = models.CharField(max_length=45, null=True, blank=True)
    last_name = models.CharField(max_length=45, null=True, blank=True)
    username = models.CharField(max_length=45, null=True, unique=True, blank=True)
    password = models.CharField(max_length=45, null=True, blank=True)
    email = models.CharField(max_length=45, null=True, unique=True, blank=True)
    date_of_birth = models.DateField(null=True, blank=True)
    video_games = models.ManyToManyField(Video_Games, through='Libraries')
    
    class Meta:
        db_table = 'players'
        
    def __str__(self):
        return self.username



# Libraries Table
class Libraries(models.Model):
    player = models.ForeignKey(Players, on_delete=models.CASCADE, null=True, blank=True)
    game = models.ForeignKey(Video_Games, on_delete=models.CASCADE, null=True, blank=True)

    class Meta:
        db_table = 'libraries'
        

        
# Connections Table
class Connections(models.Model):
    game = models.ForeignKey(Video_Games, on_delete=models.CASCADE, null=True, blank=True)
    platform = models.ForeignKey(Platforms, on_delete=models.CASCADE, null=True, blank=True)
        
    class Meta:
        db_table = 'connections'


    
    