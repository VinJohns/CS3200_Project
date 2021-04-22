from django.shortcuts import render, get_object_or_404, get_list_or_404, redirect
from . import forms
from . import models


# The base url, might add some kind of intro
def index(request):
    return render(request, 'project/index.html')


# The developers page
def developers(request):

    devs = models.Developer.objects.all()
        
    return render(request, 'project/developers.html', {'developers': devs})

# The developer editor page
def developer(request, developer_id=None):
    
    # Get the developer with specified primary key
    if developer_id is None:
        dev = None
    else:
        try:
            dev = get_object_or_404(models.Developer, pk=developer_id)
        except:
            return redirect('project:new_developer')
    
    # Set up the form to show
    DeveloperForm = forms.DeveloperForm
    
    # Forms only have GET and POST requests
    if request.method == 'POST':
        # The request was to delete the object
        if 'delete' in request.POST and dev is not None:
            dev.delete()
            return redirect('project:developers')
        # Do nothing if press delete on create page
        elif 'delete' in request.POST and dev is None:
            form = DeveloperForm(instance=dev)
        # The request was to save/create the object
        else:
            form = DeveloperForm(request.POST, request.FILES, instance=dev)
            
            if form.is_valid():
                new_dev = form.save()
                return redirect('project:developer', developer_id=new_dev.id)
            
    else: # GET request will show current values
        form = DeveloperForm(instance=dev)
        
    return render(request, 'project/developer.html', {'form': form, 'developer': dev})


# The platforms page
def platforms(request, id=None):

    # Display all records in table if not given optional arguments
    if id is None:
        platforms = models.Platform.objects.all()
    else: # Display only related records
        platforms = get_list_or_404(models.Platform, video_game__id=id)
    
        
    return render(request, 'project/platforms.html', {'platforms': platforms})

# The platform editor page
def platform(request, platform_id=None):
    
    # Get the developer with specified primary key
    if platform_id is None:
        pltfm = None
    else:
        try:
            pltfm = get_object_or_404(models.Platform, pk=platform_id)
        except:
            return redirect('project:new_platform')
    
    # Set up the form to show
    PlatformForm = forms.PlatformForm
    
    # Forms only have GET and POST requests
    if request.method == 'POST':
        # The request was to delete the object
        if 'delete' in request.POST and pltfm is not None:
            pltfm.delete()
            return redirect('project:platforms')
        # Do nothing if press delete on create page
        elif 'delete' in request.POST and pltfm is None:
            form = PlatformForm(instance=pltfm)
        # The request was to save/create the object
        else:
            form = PlatformForm(request.POST, request.FILES, instance=pltfm)
            
            if form.is_valid():
                new_pltfm = form.save()
                return redirect('project:platform', platform_id=new_pltfm.id)
            
    else: # GET request will show current values
        form = PlatformForm(instance=pltfm)
        
    return render(request, 'project/platform.html', {'form': form, 'platform': pltfm})


# The video games page
def video_games(request, related_table=None, id=None):
    
    # Display all records in table if not given optional arguments
    if related_table is None and id is None:
        games = models.Video_Game.objects.all()
    else: # Display only related records
        if related_table == 'developer':
            games = get_list_or_404(models.Video_Game, developer_id=id)
        elif related_table == 'platform':
            games = get_list_or_404(models.Video_Game, platforms__id=id)
        elif related_table == 'player':
            games = get_list_or_404(models.Video_Game, player__id=id)
        
    return render(request, 'project/video_games.html', {'games': games})

# The video game editor page
def video_game(request, game_id=None):
    
    # Get the developer with specified primary key
    if game_id is None:
        game = None
    else:
        try:
            game = get_object_or_404(models.Video_Game, pk=game_id)
        except:
            return redirect('project:new_game')
    
    # Set up the form to show
    VideoGameForm = forms.VideoGameForm
    
    # Forms only have GET and POST requests
    if request.method == 'POST':
        # The request was to delete the object
        if 'delete' in request.POST and game is not None:
            game.delete()
            return redirect('project:games')
        # Do nothing if press delete on create page
        elif 'delete' in request.POST and game is None:
            form = VideoGameForm(instance=game)
        # The request was to save/create the object
        else:
            form = VideoGameForm(request.POST, request.FILES, instance=game)
            
            if form.is_valid():
                new_game = form.save()
                return redirect('project:game', game_id=new_game.id)
            
    else: # GET request will show current values
        form = VideoGameForm(instance=game)
        
    return render(request, 'project/video_game.html', {'form': form, 'game': game})


# The players page
def players(request, id=None):

    # Display all records in table if not given optional arguments
    if id is None:
        players = models.Player.objects.all()
    else: # Display only related records
        players = get_list_or_404(models.Player, video_games__id=id)

        
    return render(request, 'project/players.html', {'players': players})

# The player editor page
def player(request, player_id=None):
    
    # Get the player with specified primary key
    if player_id is None:
        player = None
    else:
        try:
            player = get_object_or_404(models.Player, pk=player_id)
        except:
            return redirect('project:new_player')
    
    # Set up the form to show
    PlayerForm = forms.PlayerForm
    
    # Forms only have GET and POST requests
    if request.method == 'POST':
        # The request was to delete the object
        if 'delete' in request.POST and player is not None:
            player.delete()
            return redirect('project:players')
        # Do nothing if press delete on create page
        elif 'delete' in request.POST and player is None:
            form = PlayerForm(instance=player)
        # The request was to save/create the object
        else:
            form = PlayerForm(request.POST, request.FILES, instance=player)
            
            if form.is_valid():
                new_player = form.save()
                return redirect('project:player', player_id=new_player.id)
            
    else: # GET request will show current values
        form = PlayerForm(instance=player)
        
    return render(request, 'project/player.html', {'form': form, 'player': player})

