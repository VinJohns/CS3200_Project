# I just use the Django ORM dao so this doesn't really need to be used


class GeneralDao(model):
    ''' model is a class from models.py, which represents one of the Tables in the database
        but I don't really use this because Django has forms
        These functions assume the given model is already set up for CRUDing

    '''
    # Create an object using Django's save method
    def create_object(model):
        model.save()
        
    # Find all the records in a Table using Django's .objects.all method
    def find_all_objects(model):
        return model.objects.all()
    
    # Find a single record in a Table from the id using objects.get method
    def find_object(model, given_id):
        return model.objects.get(pk=given_id)
        
    # Update an existing object using Django's save method
    def update_object(model):
        model.save()
        
    # Delete an existing object using Django's delete method
    def delete_object(model):
        model.delete()