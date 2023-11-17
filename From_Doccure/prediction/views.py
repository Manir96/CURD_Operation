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
import numpy as np
import json
from django.views.decorators.http import require_POST
import nltk
from nltk.corpus import stopwords
from sklearn.preprocessing import LabelEncoder
import tensorflow as tf
nltk.download('stopwords')
import pandas as pd
train_data = pd.read_csv("static/train_dataset update 100.csv")
test_data = pd.read_csv("static/test_dataset update 100.csv")

feature_columns = ["Symptom_1", "Symptom_2", "Symptom_3", "Symptom_4", "Symptom_5", "Symptom_6",
                   "Symptom_7", "Symptom_8", "Symptom_9", "Symptom_10", "Symptom_11", "Symptom_12",
                   "Symptom_13", "Symptom_14", "Symptom_15", "Symptom_16", "Symptom_17"]

target_column = "Sub_Department"

def clean_text(text):
    if isinstance(text, str):
        text = text.lower()
        text = ' '.join(word for word in text.split() if word not in stopwords.words('english'))
    return text

for col in feature_columns:
    train_data[col] = train_data[col].apply(clean_text)
    test_data[col] = test_data[col].apply(clean_text)

import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.feature_extraction.text import TfidfVectorizer

# Assuming you have already loaded your train_data and test_data DataFrames

# Combine text features into a single column
train_data['Combined_Text'] = train_data[feature_columns].apply(lambda row: ' '.join(map(str, row)), axis=1)
test_data['Combined_Text'] = test_data[feature_columns].apply(lambda row: ' '.join(map(str, row)), axis=1)

# Extract features and target labels
X_train = train_data['Combined_Text']
X_test = test_data['Combined_Text']

label_encoder = LabelEncoder()

# Fit the LabelEncoder on the union of training and test set labels
label_encoder.fit(pd.concat([train_data[target_column], test_data[target_column]]))

# Transform both training and test set labels
y_train = label_encoder.transform(train_data[target_column])
y_test = label_encoder.transform(test_data[target_column])



# TF-IDF Vectorization
tfidf_vectorizer = TfidfVectorizer(max_features=10000)
X_train = tfidf_vectorizer.fit_transform(X_train)
X_test = tfidf_vectorizer.transform(X_test)



# Load the trained model
model = tf.keras.models.load_model("static/ClassificationModel2.h5")


# Load the label encoder used during training
label_encoder = LabelEncoder()
label_encoder.classes_ = np.load("static/label_encoder_classes2.npy", allow_pickle=True)

# Load the TF-IDF vectorizer used during training
# tfidf_vectorizer = TfidfVectorizer(max_features=10000)
# tfidf_vectorizer._validate_vocabulary()
def get_dept_data(request):
    
    try:
        # Assuming the request body contains a JSON array
        # data_array = json.loads(request.body.decode('utf-8'))
        # data_array = request.GET.getlist('selectedValues[]', [])
        data_array = request.GET.getlist('selectedValues[]', [])
        data_array = {'selectedValues': data_array}
        print("item1", data_array)
        # space_separated_string = ' '.join(data_array['selectedValues'])
        space_separated_string = ','.join(data_array['selectedValues'][:-1])
        print("item1", space_separated_string)
        print("item1", type(space_separated_string))
        

        user_input = space_separated_string
        print(user_input)
        # user_input_tfidf = tfidf_vectorizer.fit_transform([user_input])#####
        user_input_tfidf = tfidf_vectorizer.transform([user_input])
        print(user_input_tfidf)
        # user_input_tfidf = tfidf_vectorizer.transform([user_input])
        print("Original User Input TF-IDF Shape:", user_input_tfidf.shape)

        # Reshape to match the expected shape (None, 346)
        user_input_tfidf_reshaped = np.zeros((user_input_tfidf.shape[0], 346))
        user_input_tfidf_reshaped[:, :user_input_tfidf.shape[1]] = user_input_tfidf.toarray()
        print("Reshaped User Input TF-IDF Shape:", user_input_tfidf_reshaped.shape)
        if user_input_tfidf_reshaped.shape[1] != 346:
            print("Invalid input dimensions.")

        # Predict the department directly
        prediction = model.predict(user_input_tfidf_reshaped)        
        predicted_class = label_encoder.inverse_transform([np.argmax(prediction)])[0]

        print(f"The predicted department is: {predicted_class}\n")

        # You can also return a response if needed
        return JsonResponse({'status': predicted_class})
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







 