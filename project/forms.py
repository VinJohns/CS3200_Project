from django.forms import ModelForm
from . import models

# Form to get values for columns in Developers Table
class DeveloperForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(DeveloperForm, self).__init__(*args, **kwargs)
        
        for field in self.fields:
            self.fields[field].widget.attrs.update({
                'class': 'form-control', 'required': False})

    class Meta:
        model = models.Developers
        fields = '__all__'
        
    use_required_attribute = False
    
# Form to get values for columns in Platforms Table
class PlatformForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(PlatformForm, self).__init__(*args, **kwargs)
        
        for field in self.fields:
            self.fields[field].widget.attrs.update({
                'class': 'form-control', 'required': False})

    class Meta:
        model = models.Platforms
        fields = '__all__'
        
    use_required_attribute = False
    
# Form to get values for columns in Video_Games Table
class VideoGameForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(VideoGameForm, self).__init__(*args, **kwargs)
        
        for field in self.fields:
            self.fields[field].widget.attrs.update({
                'class': 'form-control', 'required': False})

    class Meta:
        model = models.Video_Games
        fields = '__all__'
        
    use_required_attribute = False
    
    
# Form to get values for columns in Players Table
class PlayerForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(PlayerForm, self).__init__(*args, **kwargs)
        
        for field in self.fields:
            self.fields[field].widget.attrs.update({
                'class': 'form-control', 'required': False})

    class Meta:
        model = models.Players
        fields = '__all__'
        
    use_required_attribute = False
    
    
    
    