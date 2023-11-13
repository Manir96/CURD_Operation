from django.shortcuts import render,redirect
from symptom.models import Symptom
from . import models 
from django.contrib import messages
from django.db import IntegrityError

# Create your views here.

def prediction_panel(request):
    data_symptom = Symptom.objects.values('symptom1','symptom2','symptom3','symptom4','symptom5','symptom6','symptom7','symptom8','symptom9','symptom10','symptom11','symptom12','symptom13','symptom14','symptom15','symptom16','symptom17').distinct()    
    context = {'symptom_data':data_symptom}
    return render(request,'form/Prediction/prediction.html',context)

def prediction_store(request): 
    try:
        prediction1 = request.POST.get('prediction1')
        prediction2 = request.POST.get('prediction2')
        prediction3 = request.POST.get('prediction3')
        prediction4 = request.POST.get('prediction4')
        prediction5 = request.POST.get('prediction5') 
        prediction6 = request.POST.get('prediction6')
        prediction7 = request.POST.get('prediction7')
        prediction8 = request.POST.get('prediction8')
        prediction9 = request.POST.get('prediction9') 
        prediction10 = request.POST.get('prediction10') 
        prediction11 = request.POST.get('prediction11') 
        prediction12 = request.POST.get('prediction12') 
        prediction13 = request.POST.get('prediction13') 
        prediction14 = request.POST.get('prediction14') 
        prediction15 = request.POST.get('prediction15') 
        prediction16 = request.POST.get('prediction16') 
        prediction17 = request.POST.get('prediction17')   
        symptom_model = models.Symptom()
        symptom_model.symptom1 = prediction1
        symptom_model.symptom2 = prediction2
        symptom_model.symptom3 = prediction3
        symptom_model.symptom4 = prediction4
        symptom_model.symptom5 = prediction5
        symptom_model.symptom6 = prediction6
        symptom_model.symptom7 = prediction7
        symptom_model.symptom8 = prediction8
        symptom_model.symptom9 = prediction9       
        symptom_model.symptom10 = prediction10       
        symptom_model.symptom11 = prediction11      
        symptom_model.symptom12 = prediction12      
        symptom_model.symptom13 = prediction13       
        symptom_model.symptom14 = prediction14       
        symptom_model.symptom15 = prediction15      
        symptom_model.symptom16 = prediction16      
        symptom_model.symptom17 = prediction17      
           
        symptom_model.save() 
        messages.success(request, 'The Prediction name hase been inserted Successfully')     
        return redirect('/prediction/')
    except (IntegrityError) as e: 
        messages.error(request, 'The Prediction name hase been inserted Successfully')   
        return render(request,'form/Prediction/prediction.html')







 