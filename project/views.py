from django.shortcuts import render, get_object_or_404, get_list_or_404, redirect
from . import forms
from . import models

# Create your views here.
# The base url, might add some kind of intro
def index(request):
    return render(request, 'project/index.html')

# The developers page
def developers(request):

    all_devs = models.Developers.objects.all()
        
    return render(request, 'project/developers.html', {'developers': all_devs})

# The developer editor page
def developer(request, developer_id=None):
    
    # Get the developer with specified primary key
    if developer_id is None:
        dev = None
    else:
        try:
            dev = get_object_or_404(models.Developers, pk=developer_id)
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
            
    else:
        form = DeveloperForm(instance=dev)
        
    return render(request, 'project/developer.html', {'form': form, 'developer': dev})


# The platforms page
def platforms(request):

    all_platforms = models.Platforms.objects.all()
        
    return render(request, 'project/platforms.html', {'platforms': all_platforms})

# The platform editor page
def platform(request, platform_id=None):
    
    # Get the developer with specified primary key
    if platform_id is None:
        pltfm = None
    else:
        try:
            pltfm = get_object_or_404(models.Platforms, pk=platform_id)
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
            
    else:
        form = PlatformForm(instance=pltfm)
        
    return render(request, 'project/platform.html', {'form': form, 'platform': pltfm})


# The video games page
def video_games(request):

    all_games = models.Video_Games.objects.all()
        
    return render(request, 'project/video_games.html', {'games': all_games})

# The video game editor page
def video_game(request, game_id=None):
    
    # Get the developer with specified primary key
    if game_id is None:
        game = None
    else:
        try:
            game = get_object_or_404(models.Video_Games, pk=game_id)
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
            
    else:
        form = VideoGameForm(instance=game)
        print(game.platforms)
        
    return render(request, 'project/video_game.html', {'form': form, 'game': game})



# The players page
def players(request):

    all_players = models.Players.objects.all()
        
    return render(request, 'project/players.html', {'players': all_players})

# The player editor page
def player(request, player_id=None):
    
    # Get the player with specified primary key
    if player_id is None:
        player = None
    else:
        try:
            player = get_object_or_404(models.Players, pk=player_id)
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
            
    else:
        form = PlayerForm(instance=player)
        
    return render(request, 'project/player.html', {'form': form, 'player': player})