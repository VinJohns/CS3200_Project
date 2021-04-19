from django.urls import path
from . import views

app_name = 'project'
urlpatterns = [
    path('', views.index, name='index'),
    
    path('developers/', views.developers, name='developers'),
    path('developers/new/', views.developer, name='new_developer'),
    path('developers/<int:developer_id>/', views.developer, name='developer'),
    
    path('platforms/', views.platforms, name='platforms'),
    path('platforms/new/', views.platform, name='new_platform'),
    path('platforms/<int:platform_id>/', views.platform, name='platform'),
    
    path('videogames/', views.video_games, name='games'),
    path('videogames/new/', views.video_game, name='new_game'),
    path('videogames/<int:game_id>/', views.video_game, name='game'),
    
    path('players/', views.players, name='players'),
    path('players/new/', views.player, name='new_player'),
    path('players/<int:player_id>/', views.player, name='player'),
]

