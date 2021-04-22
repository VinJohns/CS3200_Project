import django.forms as forms
from . import models

# Form to get values for columns in Developers Table
class DeveloperForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(DeveloperForm, self).__init__(*args, **kwargs)
        
        for field in self.fields:
            self.fields[field].widget.attrs.update({
                'class': 'form-control', 'required': False})

    class Meta:
        model = models.Developer
        fields = '__all__'
        
    
# Form to get values for columns in Platforms Table
class PlatformForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(PlatformForm, self).__init__(*args, **kwargs)
        
        for field in self.fields:
            self.fields[field].widget.attrs.update({
                'class': 'form-control', 'required': False})

    class Meta:
        model = models.Platform
        fields = '__all__'
        
    
# Form to get values for columns in Video_Games Table
class VideoGameForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(VideoGameForm, self).__init__(*args, **kwargs)
        
        for field in self.fields:
            self.fields[field].widget.attrs.update({
                'class': 'form-control', 'required': False})

    class Meta:
        model = models.Video_Game
        fields = '__all__'
        
    platforms = forms.ModelMultipleChoiceField(
            queryset=models.Platform.objects.all(),
            required=False
            )
        

# Form to get values for columns in Players Table
class PlayerForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(PlayerForm, self).__init__(*args, **kwargs)
        
        for field in self.fields:
            self.fields[field].widget.attrs.update({
                'class': 'form-control', 'required': False})

    class Meta:
        model = models.Player
        fields = '__all__'
        
    video_games = forms.ModelMultipleChoiceField(
        queryset=models.Video_Game.objects.all(),
        required=False
        )
        
    