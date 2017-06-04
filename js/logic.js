var jsonLuis, jsonEmanuel, jsonGabriel;
var arrayKeys = new Array('experience','education','projects','certifications');

 function createPrincipalInformation(){
    $.getJSON("data/luisData.js", function(result){
        jsonLuis = result[0];
        stringHtml ='<img src="../images/background1.png" alt="background1" /><figcaption><img src="'+jsonLuis['photo']+'" alt="profile-photo" class="profile" /><h2>'+jsonLuis['name']+'</h2><h2><span>'+jsonLuis['title']+'</span></h2><div id="luis"><p class="card-content">'+jsonLuis['brief']+'</p></div>'
            +'<center>'+validateSocial(jsonLuis['social'])+'<br><a href="personal.html?id=0" class="info">More Info</a></center></figcaption>';
        $('#luis-info').append(stringHtml);
    });
    $.getJSON("data/emanuelData.js", function(result){
        jsonEmanuel = result[0];
        stringHtml ='<img src="../images/background2.png" alt="background1" /><figcaption><img src="'+jsonEmanuel['photo']+'" alt="profile-photo" class="profile" /><h2>'+jsonEmanuel['name']+'</h2><h2><span>'+jsonEmanuel['title']+'</span></h2><div id="emanuel"><p class="card-content">'+jsonEmanuel['brief']+'</p></div><center>'+validateSocial(jsonEmanuel['social'])+'<br><a href="personal.html?id=1" class="info">More Info</a></center></figcaption>';
        $('#emanuel-info').append(stringHtml);
    });
    $.getJSON("data/gabrielData.js", function(result){
        jsonGabriel = result[0];
        stringHtml ='<img src="../images/background3.png" alt="background1" /><figcaption><img src="'+jsonGabriel['photo']+'" alt="profile-photo" class="profile" /><h2>'+jsonGabriel['name']+'</h2><h2><span>'+jsonGabriel['title']+'</span></h2><div id="gabriel"><p class="card-content">'+jsonGabriel['brief']+'</p></div><center>'+validateSocial(jsonGabriel['social'])+'<br><a href="personal.html?id=2" class="info">More Info</a></center></figcaption>';
        $('#gabriel-info').append(stringHtml);
    });
}

function validateSocial(jsonSocial){
    var cont = 0;
    var strHtml = '<br>';
    if(jsonSocial['facebook']!=''){
        strHtml += '<a target="_blank" href="'+jsonSocial['facebook']+'" class="social facebook"><img src="../images/fb.png"/></a>';
        cont++;
    }
    if(jsonSocial['twitter']!=''){
        strHtml += '<a target="_blank" href="'+jsonSocial['twitter']+'" class="social twitter"><img src="../images/twitter.png"/></a>';
        cont++;
    }
    if(jsonSocial['linkedin']!=''){
        strHtml += '<a target="_blank" href="'+jsonSocial['linkedin']+'" class="social linkedin"><img src="../images/in.png"/></a>';
        cont++;
    }
    if(cont>0){
        strHtml += '<br>';
        return strHtml;
    }else{
        return '';
    }
}

function tagsFunctionality(){
    $('#filterOptions li a').click(function () {
        // fetch the class of the clicked item
        var ourClass = $(this).attr('class');

        // reset the active class on all the buttons
        $('#filterOptions li').removeClass('active');
        // update the active state on our clicked button
        $(this).parent().addClass('active');

        switch (ourClass) {
            case 'default':
                loadDefautInformation();
                break;
            case 'project':
                searchEstructureInformation('projects');
                break;
            case 'education':
                searchEstructureInformation('education');
                break;
            case 'work':
                searchEstructureInformation('experience');
                break;
            default:
                searchMatchWithTag(ourClass);
                break;
        }
        return false;
    });
}

function loadDefautInformation(){
    $('#luis').html('<p class="card-content">'+jsonLuis['brief']+'</p>');
    $('#emanuel').html('<p class="card-content">'+jsonEmanuel['brief']+'</p>');
    $('#gabriel').html('<p class="card-content">'+jsonGabriel['brief']+'</p>');
}

function searchEstructureInformation(infoType){
    $('#luis').html(buildEstructureInformation(jsonLuis[infoType], infoType));
    $('#emanuel').html(buildEstructureInformation(jsonEmanuel[infoType], infoType));
    $('#gabriel').html(buildEstructureInformation(jsonGabriel[infoType], infoType));
}

function searchMatchWithTag(tag){
    buildHtmlLuisData(arrayKeys, tag);
    buildHtmlEmanuelData(arrayKeys, tag);
    buildHtmlGabrielData(arrayKeys, tag);
}

function buildHtmlLuisData(arrayKeys, tag){
    var htmlValue = '';
    $.each(arrayKeys, function(i, key){
        var data = getJsonArrayWithTag(jsonLuis[key], tag);
        if(data.length > 0){
            htmlValue += buildEstructureInformation(data, key);
        }
    });
    if(htmlValue.length > 0){
        $('#luis').html(htmlValue);
    }else{
        $('#luis').html('<p class="card-content">No information found.</p>');
    }
}

function buildHtmlEmanuelData(arrayKeys, tag){
    var htmlValue = '';
    $.each(arrayKeys, function(i, key){
        var data = getJsonArrayWithTag(jsonEmanuel[key], tag);
        if(data.length > 0){
            htmlValue += buildEstructureInformation(data, key);
        }
    });
    if(htmlValue.length > 0){
        $('#emanuel').html(htmlValue);
    }else{
        $('#emanuel').html('<p class="card-content">No information found.</p>');
    }
}

function buildHtmlGabrielData(arrayKeys, tag){
    var htmlValue = '';
    $.each(arrayKeys, function(i, key){
        var data = getJsonArrayWithTag(jsonGabriel[key], tag);
        if(data.length > 0){
            htmlValue += buildEstructureInformation(data, key);
        }
    });
    if(htmlValue.length > 0){
        $('#gabriel').html(htmlValue);
    }else{
        $('#gabriel').html('<p class="card-content">No information found.</p>');
    }
}

function getJsonArrayWithTag(jsonArray, tag){
    var resultArray = new Array();
    $.each(jsonArray, function(i, object){
        if(object['tags'].toLowerCase().search(tag) >= 0){
            resultArray.push(object);
        }
    });
    return resultArray;
}

function buttonEvent(){
    $("#btn").click(function(){
        if(jsonLuis == undefined || jsonEmanuel == undefined || jsonGabriel == undefined){
            alert("Error: The data not loaded.");
        }else{
            var inputValue = $("input#seach-bar").val();
            if(inputValue.trim().length > 2){
                searchMatchKeySearch(inputValue.toLowerCase());
            }
        }
    });
}

function searchMatchKeySearch(tag){
    buildHtmlLuisDataSearch(arrayKeys, tag);
    buildHtmlEmanuelDataSearch(arrayKeys, tag);
    buildHtmlGabrielDataSearch(arrayKeys, tag);
}

function buildHtmlLuisDataSearch(arrayKeys, tagKey){
    var htmlValue = '';
    $.each(arrayKeys, function(i, key){
        var data = getArrayKeyFindedInJsonArray(jsonLuis[key], tagKey);
        if(data.length > 0){
            htmlValue += buildEstructureInformation(data, key);
        }
    });
    if(htmlValue.length > 0){
        $('#luis').html(htmlValue);
    }else{
        $('#luis').html('<p class="card-content">No information found.</p>');
    }
}

function buildHtmlEmanuelDataSearch(arrayKeys, tagKey){
    var htmlValue = '';
    $.each(arrayKeys, function(i, key){
        var data = getArrayKeyFindedInJsonArray(jsonEmanuel[key], tagKey);
        if(data.length > 0){
            htmlValue += buildEstructureInformation(data, key);
        }
    });
    if(htmlValue.length > 0){
        $('#emanuel').html(htmlValue);
    }else{
        $('#emanuel').html('<p class="card-content">No information found.</p>');
    }
}

function buildHtmlGabrielDataSearch(arrayKeys, tagKey){
    var htmlValue = '';
    $.each(arrayKeys, function(i, key){
        var data = getArrayKeyFindedInJsonArray(jsonGabriel[key], tagKey);
        if(data.length > 0){
            htmlValue += buildEstructureInformation(data, key);
        }
    });
    if(htmlValue.length > 0){
        $('#gabriel').html(htmlValue);
    }else{
        $('#gabriel').html('<p class="card-content">No information found.</p>');
    }
}

function getArrayKeyFindedInJsonArray(jsonArray, keyText){
    var resultArray = new Array();
    for(var obj in jsonArray){
        if(jsonArray.hasOwnProperty(obj)){
            for(var prop in jsonArray[obj]){
                if(jsonArray[obj].hasOwnProperty(prop) &&
                    jsonArray[obj][prop].toLowerCase().search(keyText) >= 0){
                    resultArray.push(jsonArray[obj]);
                    break;
                }
            }
        }
    }
    return resultArray;
}

function buildEstructureInformation(jsonInfo, infoType){
    var htmlString = '';
    switch (infoType) {
        case 'projects':
            $.each(jsonInfo, function(i, field){
                htmlString += '<p class="card-content">'+field['name']+': '+field['description'].substr(0,150)+'...</p>';
            });
            break;
        case 'education':
            $.each(jsonInfo, function(i, field){
                htmlString += '<p class="card-content">'+field['title']+' in '+field['place']+'.</p>';
            });
            break;
        case 'experience':
            $.each(jsonInfo, function(i, field){
                htmlString += '<p class="card-content">'+field['job']+' in '+field['business']+'. '+field['activities']+'</p>';
            });
            break;
        case 'certifications':
            $.each(jsonInfo, function(i, field){
                htmlString += '<p class="card-content">'+field['title']+' ('+field['description']+')</p>';
            });
            break;
    }
    return htmlString;
}