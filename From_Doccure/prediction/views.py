from django.shortcuts import render,redirect
from symptom.models import Symptom
from . import models 
from django.contrib import messages
from django.db import IntegrityError
from django.http import JsonResponse
from django.db.models import Q
# import tensorflow as tf

# Create your views here.

def prediction_panel(request):
    # data_symptom = Symptom.objects.values_list('symptom1','symptom2','symptom3','symptom4','symptom5','symptom6','symptom7','symptom8','symptom9','symptom10','symptom11','symptom12','symptom13','symptom14','symptom15','symptom16','symptom17').distinct()  
    data_symptom1 = Symptom.objects.values_list('symptom1',flat=True).distinct()
    data_symptom2 = Symptom.objects.values_list('symptom2',flat=True).distinct()    
    data_symptom3 = Symptom.objects.values_list('symptom3',flat=True).distinct()    
    data_symptom4 = Symptom.objects.values_list('symptom4',flat=True).distinct()    
    data_symptom5 = Symptom.objects.values_list('symptom5',flat=True).distinct()    
    data_symptom6 = Symptom.objects.values_list('symptom6',flat=True).distinct()    
    data_symptom7 = Symptom.objects.values_list('symptom7',flat=True).distinct()    
    data_symptom8 = Symptom.objects.values_list('symptom8',flat=True).distinct()    
    data_symptom9 = Symptom.objects.values_list('symptom9',flat=True).distinct()    
    data_symptom10 = Symptom.objects.values_list('symptom10',flat=True).distinct()    
    data_symptom11 = Symptom.objects.values_list('symptom11',flat=True).distinct()    
    data_symptom12 = Symptom.objects.values_list('symptom12',flat=True).distinct()    
    data_symptom13 = Symptom.objects.values_list('symptom13',flat=True).distinct()    
    data_symptom14 = Symptom.objects.values_list('symptom14',flat=True).distinct()    
    data_symptom15 = Symptom.objects.values_list('symptom15',flat=True).distinct()    
    data_symptom16 = Symptom.objects.values_list('symptom16',flat=True).distinct()   
    data_symptom17 = Symptom.objects.values_list('symptom17',flat=True).distinct()    
    context = {'symptom_data1':data_symptom1,"symptom_data2":data_symptom2,"symptom_data3":data_symptom3,"symptom_data4":data_symptom4,"symptom_data5":data_symptom5,"symptom_data6":data_symptom6,"symptom_data7":data_symptom7,"symptom_data8":data_symptom8,"symptom_data9":data_symptom9,"symptom_data10":data_symptom10,"symptom_data11":data_symptom11,"symptom_data12":data_symptom12,"symptom_data13":data_symptom13,"symptom_data14":data_symptom14,"symptom_data15":data_symptom15,"symptom_data16":data_symptom16,"symptom_data17":data_symptom17}
    return render(request,'form/Prediction/prediction.html',context)





def get_data(request):
    print(request.GET.get('selected_option'))
    # print(request.POST.get('selected_option'))
    # data = Symptom.objects.filter(symptom1=request.GET.get('selected_option')).values()
    selected_option = request.GET.get('selected_option')

    results = Symptom.objects.filter(
        Q(symptom1=selected_option) |
        Q(symptom2=selected_option) |
        Q(symptom3=selected_option) |
        Q(symptom4=selected_option) |
        Q(symptom5=selected_option) |
        Q(symptom6=selected_option) |
        Q(symptom7=selected_option) |
        Q(symptom8=selected_option) |
        Q(symptom9=selected_option) |
        Q(symptom10=selected_option) |
        Q(symptom11=selected_option) |
        Q(symptom12=selected_option) |
        Q(symptom13=selected_option) |
        Q(symptom14=selected_option) |
        Q(symptom15=selected_option) |
        Q(symptom16=selected_option) |
        Q(symptom17=selected_option)
    ).values()
    # try:
    #     selected_option = request.GET.get('selected_option', '')

    #     # Replace Symptom with the actual name of your Django model
    #     symptom_conditions = [Q(**{f'symptom{i}__icontains': selected_option}) for i in range(1, 18)]

    #     # Combine the conditions with OR
    #     combined_condition = symptom_conditions.pop() if symptom_conditions else Q()
    #     for condition in symptom_conditions:
    #         combined_condition |= condition

    #     # Replace Symptom with the actual name of your Django model
    #     results = Symptom.objects.filter(combined_condition).values()

    #     return JsonResponse({'data': list(results)})

    # except Exception as e:
    #     # logging.exception("An error occurred:")
    #     return JsonResponse({'error': 'Internal Server Error'})
    return JsonResponse({'data': list(results)})

import json
def get_dept_data(request):
    
    try:
        # Assuming the request body contains a JSON array
        # data_array = json.loads(request.body.decode('utf-8'))
        data_array = request.GET.getlist('selectedValues[]', [])

        # Process the data as needed
        for item in data_array:
            # Access each selected value using item['selectedValue']
            print(item['selectedValue'])

        # You can also return a response if needed
        return JsonResponse({'status': 'success'})
    except json.JSONDecodeError:
        return JsonResponse({'status': 'error', 'message': 'Invalid JSON'}, status=400)

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







 