$(document).ready(function () {

    $('.select_box').change(function () {
        selectedOption = $(this).find('option:selected').text();
        alert(selectedOption);
        $.ajax({
            url: '/prediction/get_data/',
            data: { selected_option: selectedOption },
            dataType: 'json',
            success: function (data) {
                // Process the data as needed
                console.log();
                // var symptomData = data.data[0];
                // console.log(symptomData)
                var selectBox = $('.yourSelectBoxId');  // Replace with the actual ID of your select box
                selectBox.empty();  // Clear previous options

                for (i = 0; i < data.data.length; i++) {
                    var symptomData = data.data[i];
                    console.log(symptomData)
                    for (j = 1; j < 18; j++) {
                        console.log(j)
                        var symptomValue = symptomData['symptom' + j];
                        if (symptomValue == selectedOption) {
                            continue;
                        }
                        else {
                            console.log(symptomValue)
                            selectBox.append($('<option>', {
                                value: symptomValue,
                                text: symptomValue
                            }));
                        }

                    }
                }
            },
            error: function (error) {
                console.error('Error:', error);
            }
        });
    });

});