$(document).ready(function () {
    sym_array = []

    $('select').each(function (i) {
        t = $(this)
        cls = t.attr('class');

        $(t).change(function () {


            // var cls = cls[i + 2];
            var currentClassName = $(this).attr('class').split(' ')[2];

            var match = currentClassName.match(/\d+/);
            // alert(match)
            if (match) {
                // Increment the number by 1
                var incrementedNumber = parseInt(match[0]) + 1;

                // Replace the old number with the incremented number
                var newContent = currentClassName.replace(/\d+/, incrementedNumber);
                // alert(newContent)

                // Set the updated content back to the element
                // $('#example').text(newContent);
            }
            // alert('form_group' + incrementedNumber)

            if (incrementedNumber > 5) {
                var confirmed = confirm('Do you want to give more symtomp');
                if (confirmed) {
                    alert("yes")
                    $('.form_group' + incrementedNumber).show()
                    $('.predict_dept').hide()
                }
                else {
                    $('.predict_dept').show()
                    $('.form_group' + incrementedNumber).hide()
                }
            }
            else {
                $('.form_group' + incrementedNumber).show()

            }


            selectedOption = $('.select_box1').find('option:selected').text();
            selectedOption2 = $(this).find('option:selected').text();
            sym_array.push(selectedOption)
            sym_array.push(selectedOption2)


            $.ajax({
                url: '/prediction/get_data/',
                data: { selected_option: selectedOption },
                dataType: 'json',
                success: function (data) {
                    // Process the data as needed
                    console.log();
                    // var symptomData = data.data[0];
                    // console.log(symptomData)
                    var selectBox = $('.' + newContent);  // Replace with the actual ID of your select box
                    selectBox.empty();  // Clear previous options
                    // var yourVariable = "I don't have something";

                    // if (yourVariable.indexOf("I don't have") !== -1) {
                    //     // The string "I don't have" is present in yourVariable
                    //     console.log("The string is present.");
                    // } else {
                    //     // The string is not present in yourVariable
                    //     console.log("The string is not present.");
                    // }

                    for (i = 0; i < data.data.length; i++) {
                        var symptomData = data.data[i];
                        // console.log(symptomData)
                        for (j = 1; j < 18; j++) {
                            console.log(j)
                            var symptomValue = symptomData['symptom' + j];
                            if (symptomValue == selectedOption2 || symptomValue.indexOf("I don't have") !== -1 || $.inArray(symptomValue, sym_array) !== -1) {
                                console.log("okay")
                                continue;
                            }
                            else {
                                // console.log(symptomValue)
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

    $('.predict_dept').click(function (e) {
        e.preventDefault()
        var selectedValues = $(".select_box option:selected").map(function () {
            return $(this).text();
        }).get();
        console.log(selectedValues)
        var dataArray = [];

        // Loop through selected values and create an object for each
        // $.each(selectedValues, function (index, value) {
        //     dataArray.push({ 'selectedValue': value });
        // });
        // console.log(dataArray)
        $.ajax({
            url: '/prediction/get_dept_data/',
            method: 'GET',
            data: { selectedValues: selectedValues },
            contentType: "application/json; charset=utf-8",
            dataType: 'json',
            success: function (data) {
                // Process the data as needed
                console.log(data.status);
                $('.result_pred').show()
                $('.result_pred').text("The Result of Department Prediction: " + data.status)
                // var symptomData = data.data[0];
                // console.log(symptomData)
                // var selectBox = $('.' + newContent);  // Replace with the actual ID of your select box
                // selectBox.empty();  // Clear previous options
                // var yourVariable = "I don't have something";

                // if (yourVariable.indexOf("I don't have") !== -1) {
                //     // The string "I don't have" is present in yourVariable
                //     console.log("The string is present.");
                // } else {
                //     // The string is not present in yourVariable
                //     console.log("The string is not present.");
                // }

                // for (i = 0; i < data.data.length; i++) {
                //     var symptomData = data.data[i];
                //     // console.log(symptomData)
                //     for (j = 1; j < 18; j++) {
                //         console.log(j)
                //         var symptomValue = symptomData['symptom' + j];
                //         if (symptomValue == selectedOption2 || symptomValue.indexOf("I don't have") !== -1 || $.inArray(symptomValue, sym_array) !== -1) {
                //             console.log("okay")
                //             continue;
                //         }
                //         else {
                //             // console.log(symptomValue)
                //             selectBox.append($('<option>', {
                //                 value: symptomValue,
                //                 text: symptomValue
                //             }));
                //         }

                //     }
                // }
            },
            error: function (error) {
                $('.result_pred').hide()
                console.error('Error:', error);
            }
        });


    });
});