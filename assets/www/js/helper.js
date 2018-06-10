var Base64 = {
    _keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
    encode: function(e) {
        var t = "";
        var n, r, i, s, o, u, a;
        var f = 0;
        e = Base64._utf8_encode(e);
        while (f < e.length) {
            n = e.charCodeAt(f++);
            r = e.charCodeAt(f++);
            i = e.charCodeAt(f++);
            s = n >> 2;
            o = (n & 3) << 4 | r >> 4;
            u = (r & 15) << 2 | i >> 6;
            a = i & 63;
            if (isNaN(r)) {
                u = a = 64
            } else if (isNaN(i)) {
                a = 64
            }
            t = t + this._keyStr.charAt(s) + this._keyStr.charAt(o) + this._keyStr.charAt(u) + this._keyStr.charAt(a)
        }
        return t
    },
    decode: function(e) {
        var t = "";
        var n, r, i;
        var s, o, u, a;
        var f = 0;
        e = e.replace(/[^A-Za-z0-9+/=]/g, "");
        while (f < e.length) {
            s = this._keyStr.indexOf(e.charAt(f++));
            o = this._keyStr.indexOf(e.charAt(f++));
            u = this._keyStr.indexOf(e.charAt(f++));
            a = this._keyStr.indexOf(e.charAt(f++));
            n = s << 2 | o >> 4;
            r = (o & 15) << 4 | u >> 2;
            i = (u & 3) << 6 | a;
            t = t + String.fromCharCode(n);
            if (u != 64) {
                t = t + String.fromCharCode(r)
            }
            if (a != 64) {
                t = t + String.fromCharCode(i)
            }
        }
        t = Base64._utf8_decode(t);
        return t
    },
    _utf8_encode: function(e) {
        var t = "";
        for (var n = 0; n < e.length; n++) {
            var r = e.charCodeAt(n);
            if (r < 128) {
                t += String.fromCharCode(r)
            } else if (r > 127 && r < 2048) {
                t += String.fromCharCode(r >> 6 | 192);
                t += String.fromCharCode(r & 63 | 128)
            } else {
                t += String.fromCharCode(r >> 12 | 224);
                t += String.fromCharCode(r >> 6 & 63 | 128);
                t += String.fromCharCode(r & 63 | 128)
            }
        }
        return t
    },
    _utf8_decode: function(e) {
        var t = "";
        var n = 0;
        var r = c1 = c2 = 0;
        while (n < e.length) {
            r = e.charCodeAt(n);
            if (r < 128) {
                t += String.fromCharCode(r);
                n++
            } else if (r > 191 && r < 224) {
                c2 = e.charCodeAt(n + 1);
                t += String.fromCharCode((r & 31) << 6 | c2 & 63);
                n += 2
            } else {
                c2 = e.charCodeAt(n + 1);
                c3 = e.charCodeAt(n + 2);
                t += String.fromCharCode((r & 15) << 12 | (c2 & 63) << 6 | c3 & 63);
                n += 3
            }
        }
        return t
    }
};
var secureKey = "a2dc2a99e649f147bcabc5a99bea7d96";

AppyTemplate.registerHelper('getICON', function(type) {
    var iconArray = {
        email: "icon-email",
        name: "iconz-user",
        phone: "iconz-phone1",
        text: "icon-edit",
        checkbox: "iconz-checkbox",
        textarea: "icon-edit",
        state: "iconz-location-3",
        country: "icon-map",
        gender: "iconz-family",
        date: "icon-calendar-4",
        radio: "icon-circle",
        select: "icon-listing",
        multiselect: "icon-listing",
        time: "icon-clock-4",
        uploadPicture: "iconz-upload",
        company: "iconz-briefcase",
        website: "icon-globe-3",
        emailEnquiryList: "icon-map",
        amount: "iconz-account",
        group: "icon-users-2",
		barcode: "icon-barcode",
        qrcode: "icon-qrcode"
    }
    return iconArray[type];
})

AppyTemplate.registerHelper("format_currency", function(currency) {
    //localStorage.setItem("currencySymbol",currency);
    var cur = data.currencySymbol;
    var key = currency;
    if (cur[key] == "" || cur[key] == undefined || cur[key] == "null") {
        localStorage.setItem("currencySymbol", key);
        return key;
    } else {
        localStorage.setItem("currencySymbol", cur[key]);
        return cur[key];
    }

});

AppyTemplate.registerHelper('getPayment', function(type) {
    var iconArray = {
        cod: "appyicon-wallet",
        obp: "iconz-phone1",
        paypal: "icon-paypal-1",
        card: "icon-credit-card-2",
        stripe: "appyicon-stripe",
        payu: "appyicon-payu-money",
        payfast: "appyicon-pf-icon",
        hubtel: "appyicon-hubtel"
    }
    return iconArray[type];
})



var  countryArrayList = {
    "countryList": {
        "country": [
                    {
                    "shortname": "US",
                    "longname": "United States"
                    },

                    {
                     "shortname": "US",
                     "longname": "USA"
                     },
                     {
                    "shortname": "GB",
                    "longname": "United Kingdom"
                     },
                    {
                    "shortname": "AF",
                    "longname": "Afghanistan"
                    },
                    {
                    "shortname": "AX",
                    "longname": "Åland Islands"
                    },
                    {
                    "shortname": "AL",
                    "longname": "Albania"
                    },
                    {
                    "shortname": "DZ",
                    "longname": "Algeria"
                    },
                    {
                    "shortname": "AS",
                    "longname": "American Samoa"
                    },
                    {
                    "shortname": "AD",
                    "longname": "Andorra"
                    },
                    {
                    "shortname": "AO",
                    "longname": "Angola"
                    },
                    {
                    "shortname": "AI",
                    "longname": "Anguilla"
                    },
                    {
                    "shortname": "AQ",
                    "longname": "Antarctica"
                    },
                    {
                    "shortname": "AG",
                    "longname": "Antigua and Barbuda"
                    },
                    {
                    "shortname": "AR",
                    "longname": "Argentina"
                    },
                    {
                    "shortname": "AM",
                    "longname": "Armenia"
                    },
                    {
                    "shortname": "AW",
                    "longname": "Aruba"
                    },
                    {
                    "shortname": "AU",
                    "longname": "Australia"
                    },
                    {
                    "shortname": "AT",
                    "longname": "Austria"
                    },
                    {
                    "shortname": "AZ",
                    "longname": "Azerbaijan"
                    },
                    {
                    "shortname": "BS",
                    "longname": "Bahamas"
                    },
                    {
                    "shortname": "BH",
                    "longname": "Bahrain"
                    },
                    {
                    "shortname": "BD",
                    "longname": "Bangladesh"
                    },
                    {
                    "shortname": "BB",
                    "longname": "Barbados"
                    },
                    {
                    "shortname": "BY",
                    "longname": "Belarus"
                    },
                    {
                    "shortname": "BE",
                    "longname": "Belgium"
                    },
                    {
                    "shortname": "BZ",
                    "longname": "Belize"
                    },
                    {
                    "shortname": "BJ",
                    "longname": "Benin"
                    },
                    {
                    "shortname": "BM",
                    "longname": "Bermuda"
                    },
                    {
                    "shortname": "BT",
                    "longname": "Bhutan"
                    },
                    {
                    "shortname": "BO",
                    "longname": "Bolivia"
                    },
                    {
                    "shortname": "BA",
                    "longname": "Bosnia and Herzegovina"
                    },
                    {
                    "shortname": "BW",
                    "longname": "Botswana"
                    },
                    {
                    "shortname": "BV",
                    "longname": "Bouvet Island"
                    },
                    {
                    "shortname": "BR",
                    "longname": "Brazil"
                    },
                    {
                    "shortname": "IO",
                    "longname": "British Indian Ocean Territory"
                    },
                    {
                    "shortname": "BN",
                    "longname": "Brunei Darussalam"
                    },
                    {
                    "shortname": "BG",
                    "longname": "Bulgaria"
                    },
                    {
                    "shortname": "BF",
                    "longname": "Burkina Faso"
                    },
                    {
                    "shortname": "BI",
                    "longname": "Burundi"
                    },
                    {
                    "shortname": "KH",
                    "longname": "Cambodia"
                    },
                    {
                    "shortname": "CM",
                    "longname": "Cameroon"
                    },
                    {
                    "shortname": "CA",
                    "longname": "Canada"
                    },
                    {
                    "shortname": "CV",
                    "longname": "Cape Verde"
                    },
                    {
                    "shortname": "KY",
                    "longname": "Cayman Islands"
                    },
                    {
                    "shortname": "CF",
                    "longname": "Central African Republic"
                    },
                    {
                    "shortname": "TD",
                    "longname": "Chad"
                    },
                    {
                    "shortname": "CL",
                    "longname": "Chile"
                    },
                    {
                    "shortname": "CN",
                    "longname": "China"
                    },
                    {
                    "shortname": "CX",
                    "longname": "Christmas Island"
                    },
                    {
                    "shortname": "CC",
                    "longname": "Cocos (Keeling) Islands"
                    },
                    {
                    "shortname": "CO",
                    "longname": "Colombia"
                    },
                    {
                    "shortname": "KM",
                    "longname": "Comoros"
                    },
                    {
                    "shortname": "CG",
                    "longname": "Congo"
                    },
                    {
                    "shortname": "CD",
                    "longname": "Congo, The Democratic Republic of the"
                    },
                    {
                    "shortname": "CK",
                    "longname": "Cook Islands"
                    },
                    {
                    "shortname": "CR",
                    "longname": "Costa Rica"
                    },
                    {
                    "shortname": "CI",
                    "longname": "Côte D'Ivoire"
                    },
                    {
                    "shortname": "HR",
                    "longname": "Croatia"
                    },
                    {
                    "shortname": "CU",
                    "longname": "Cuba"
                    },
                    {
                    "shortname": "CY",
                    "longname": "Cyprus"
                    },
                    {
                    "shortname": "CZ",
                    "longname": "Czech Republic"
                    },
                    {
                    "shortname": "DK",
                    "longname": "Denmark"
                    },
                    {
                    "shortname": "DJ",
                    "longname": "Djibouti"
                    },
                    {
                    "shortname": "DM",
                    "longname": "Dominica"
                    },
                    {
                    "shortname": "DO",
                    "longname": "Dominican Republic"
                    },
                    {
                    "shortname": "EC",
                    "longname": "Ecuador"
                    },
                    {
                    "shortname": "EG",
                    "longname": "Egypt"
                    },
                    {
                    "shortname": "SV",
                    "longname": "El Salvador"
                    },
                    {
                    "shortname": "GQ",
                    "longname": "Equatorial Guinea"
                    },
                    {
                    "shortname": "ER",
                    "longname": "Eritrea"
                    },
                    {
                    "shortname": "EE",
                    "longname": "Estonia"
                    },
                    {
                    "shortname": "ET",
                    "longname": "Ethiopia"
                    },
                    {
                    "shortname": "FK",
                    "longname": "Falkland Islands (Malvinas)"
                    },
                    {
                    "shortname": "FO",
                    "longname": "Faroe Islands"
                    },
                    {
                    "shortname": "FJ",
                    "longname": "Fiji"
                    },
                    {
                    "shortname": "FI",
                    "longname": "Finland"
                    },
                    {
                    "shortname": "FR",
                    "longname": "France"
                    },
                    {
                    "shortname": "GF",
                    "longname": "French Guiana"
                    },
                    {
                    "shortname": "PF",
                    "longname": "French Polynesia"
                    },
                    {
                    "shortname": "TF",
                    "longname": "French Southern Territories"
                    },
                    {
                    "shortname": "GA",
                    "longname": "Gabon"
                    },
                    {
                    "shortname": "GM",
                    "longname": "Gambia"
                    },
                    {
                    "shortname": "GE",
                    "longname": "Georgia"
                    },
                    {
                    "shortname": "DE",
                    "longname": "Germany"
                    },
                    {
                    "shortname": "GH",
                    "longname": "Ghana"
                    },
                    {
                    "shortname": "GI",
                    "longname": "Gibraltar"
                    },
                    {
                    "shortname": "GR",
                    "longname": "Greece"
                    },
                    {
                    "shortname": "GL",
                    "longname": "Greenland"
                    },
                    {
                    "shortname": "GD",
                    "longname": "Grenada"
                    },
                    {
                    "shortname": "GP",
                    "longname": "Guadeloupe"
                    },
                    {
                    "shortname": "GU",
                    "longname": "Guam"
                    },
                    {
                    "shortname": "GT",
                    "longname": "Guatemala"
                    },
                    {
                    "shortname": "GG",
                    "longname": "Guernsey"
                    },
                    {
                    "shortname": "GN",
                    "longname": "Guinea"
                    },
                    {
                    "shortname": "GW",
                    "longname": "Guinea-Bissau"
                    },
                    {
                    "shortname": "GY",
                    "longname": "Guyana"
                    },
                    {
                    "shortname": "HT",
                    "longname": "Haiti"
                    },
                    {
                    "shortname": "HM",
                    "longname": "Heard Island and McDonald Islands"
                    },
                    {
                    "shortname": "VA",
                    "longname": "Holy See (Vatican City State)"
                    },
                    {
                    "shortname": "HN",
                    "longname": "Honduras"
                    },
                    {
                    "shortname": "HK",
                    "longname": "Hong Kong"
                    },
                    {
                    "shortname": "HU",
                    "longname": "Hungary"
                    },
                    {
                    "shortname": "IS",
                    "longname": "Iceland"
                    },
                    {
                    "shortname": "IN",
                    "longname": "India"
                    },
                    {
                    "shortname": "ID",
                    "longname": "Indonesia"
                    },
                    {
                    "shortname": "IR",
                    "longname": "Iran, Islamic Republic of"
                    },
                    {
                    "shortname": "IQ",
                    "longname": "Iraq"
                    },
                    {
                    "shortname": "IE",
                    "longname": "Ireland"
                    },
                    {
                    "shortname": "IM",
                    "longname": "Isle of Man"
                    },
                    {
                    "shortname": "IL",
                    "longname": "Israel"
                    },
                    {
                    "shortname": "IT",
                    "longname": "Italy"
                    },
                    {
                    "shortname": "JM",
                    "longname": "Jamaica"
                    },
                    {
                    "shortname": "JP",
                    "longname": "Japan"
                    },
                    {
                    "shortname": "JE",
                    "longname": "Jersey"
                    },
                    {
                    "shortname": "JO",
                    "longname": "Jordan"
                    },
                    {
                    "shortname": "KZ",
                    "longname": "Kazakhstan"
                    },
                    {
                    "shortname": "KE",
                    "longname": "Kenya"
                    },
                    {
                    "shortname": "KI",
                    "longname": "Kiribati"
                    },
                    {
                    "shortname": "KP",
                    "longname": "Korea, Democratic People's Republic of"
                    },
                    {
                    "shortname": "KR",
                    "longname": "Korea, Republic of"
                    },
                    {
                    "shortname": "KW",
                    "longname": "Kuwait"
                    },
                    {
                    "shortname": "KG",
                    "longname": "Kyrgyzstan"
                    },
                    {
                    "shortname": "LA",
                    "longname": "Lao People's Democratic Republic"
                    },
                    {
                    "shortname": "LV",
                    "longname": "Latvia"
                    },
                    {
                    "shortname": "LB",
                    "longname": "Lebanon"
                    },
                    {
                    "shortname": "LS",
                    "longname": "Lesotho"
                    },
                    {
                    "shortname": "LR",
                    "longname": "Liberia"
                    },
                    {
                    "shortname": "LY",
                    "longname": "Libyan Arab Jamahiriya"
                    },
                    {
                    "shortname": "LI",
                    "longname": "Liechtenstein"
                    },
                    {
                    "shortname": "LT",
                    "longname": "Lithuania"
                    },
                    {
                    "shortname": "LU",
                    "longname": "Luxembourg"
                    },
                    {
                    "shortname": "MO",
                    "longname": "Macao"
                    },
                    {
                    "shortname": "MK",
                    "longname": "Macedonia, The Former Yugoslav Republic of"
                    },
                    {
                    "shortname": "MG",
                    "longname": "Madagascar"
                    },
                    {
                    "shortname": "MW",
                    "longname": "Malawi"
                    },
                    {
                    "shortname": "MY",
                    "longname": "Malaysia"
                    },
                    {
                    "shortname": "MV",
                    "longname": "Maldives"
                    },
                    {
                    "shortname": "ML",
                    "longname": "Mali"
                    },
                    {
                    "shortname": "MT",
                    "longname": "Malta"
                    },
                    {
                    "shortname": "MH",
                    "longname": "Marshall Islands"
                    },
                    {
                    "shortname": "MQ",
                    "longname": "Martinique"
                    },
                    {
                    "shortname": "MR",
                    "longname": "Mauritania"
                    },
                    {
                    "shortname": "MU",
                    "longname": "Mauritius"
                    },
                    {
                    "shortname": "YT",
                    "longname": "Mayotte"
                    },
                    {
                    "shortname": "MX",
                    "longname": "Mexico"
                    },
                    {
                    "shortname": "FM",
                    "longname": "Micronesia, Federated States of"
                    },
                    {
                    "shortname": "MD",
                    "longname": "Moldova, Republic of"
                    },
                    {
                    "shortname": "MC",
                    "longname": "Monaco"
                    },
                    {
                    "shortname": "MN",
                    "longname": "Mongolia"
                    },
                    {
                    "shortname": "ME",
                    "longname": "Montenegro"
                    },
                    {
                    "shortname": "MS",
                    "longname": "Montserrat"
                    },
                    {
                    "shortname": "MA",
                    "longname": "Morocco"
                    },
                    {
                    "shortname": "MZ",
                    "longname": "Mozambique"
                    },
                    {
                    "shortname": "MM",
                    "longname": "Myanmar"
                    },
                    {
                    "shortname": "NA",
                    "longname": "Namibia"
                    },
                    {
                    "shortname": "NR",
                    "longname": "Nauru"
                    },
                    {
                    "shortname": "NP",
                    "longname": "Nepal"
                    },
                    {
                    "shortname": "NL",
                    "longname": "Netherlands"
                    },
                    {
                    "shortname": "AN",
                    "longname": "Netherlands Antilles"
                    },
                    {
                    "shortname": "NC",
                    "longname": "New Caledonia"
                    },
                    {
                    "shortname": "NZ",
                    "longname": "New Zealand"
                    },
                    {
                    "shortname": "NI",
                    "longname": "Nicaragua"
                    },
                    {
                    "shortname": "NE",
                    "longname": "Niger"
                    },
                    {
                    "shortname": "NG",
                    "longname": "Nigeria"
                    },
                    {
                    "shortname": "NU",
                    "longname": "Niue"
                    },
                    {
                    "shortname": "NF",
                    "longname": "Norfolk Island"
                    },
                    {
                    "shortname": "MP",
                    "longname": "Northern Mariana Islands"
                    },
                    {
                    "shortname": "NO",
                    "longname": "Norway"
                    },
                    {
                    "shortname": "OM",
                    "longname": "Oman"
                    },
                    {
                    "shortname": "PK",
                    "longname": "Pakistan"
                    },
                    {
                    "shortname": "PW",
                    "longname": "Palau"
                    },
                    {
                    "shortname": "PS",
                    "longname": "Palestinian Territory, Occupied"
                    },
                    {
                    "shortname": "PA",
                    "longname": "Panama"
                    },
                    {
                    "shortname": "PG",
                    "longname": "Papua New Guinea"
                    },
                    {
                    "shortname": "PY",
                    "longname": "Paraguay"
                    },
                    {
                    "shortname": "PE",
                    "longname": "Peru"
                    },
                    {
                    "shortname": "PH",
                    "longname": "Philippines"
                    },
                    {
                    "shortname": "PN",
                    "longname": "Pitcairn"
                    },
                    {
                    "shortname": "PL",
                    "longname": "Poland"
                    },
                    {
                    "shortname": "PT",
                    "longname": "Portugal"
                    },
                    {
                    "shortname": "PR",
                    "longname": "Puerto Rico"
                    },
                    {
                    "shortname": "QA",
                    "longname": "Qatar"
                    },
                    {
                    "shortname": "RE",
                    "longname": "Reunion"
                    },
                    {
                    "shortname": "RO",
                    "longname": "Romania"
                    },
                    {
                    "shortname": "RU",
                    "longname": "Russian Federation"
                    },
                    {
                    "shortname": "RW",
                    "longname": "Rwanda"
                    },
                    {
                    "shortname": "BL",
                    "longname": "Saint Barthélemy"
                    },
                    {
                    "shortname": "SH",
                    "longname": "Saint Helena"
                    },
                    {
                    "shortname": "KN",
                    "longname": "Saint Kitts and Nevis"
                    },
                    {
                    "shortname": "LC",
                    "longname": "Saint Lucia"
                    },
                    {
                    "shortname": "MF",
                    "longname": "Saint Martin"
                    },
                    {
                    "shortname": "PM",
                    "longname": "Saint Pierre and Miquelon"
                    },
                    {
                    "shortname": "VC",
                    "longname": "Saint Vincent and the Grenadines"
                    },
                    {
                    "shortname": "WS",
                    "longname": "Samoa"
                    },
                    {
                    "shortname": "SM",
                    "longname": "San Marino"
                    },
                    {
                    "shortname": "ST",
                    "longname": "Sao Tome and Principe"
                    },
                    {
                    "shortname": "SA",
                    "longname": "Saudi Arabia"
                    },
                    {
                    "shortname": "SN",
                    "longname": "Senegal"
                    },
                    {
                    "shortname": "RS",
                    "longname": "Serbia"
                    },
                    {
                    "shortname": "SC",
                    "longname": "Seychelles"
                    },
                    {
                    "shortname": "SL",
                    "longname": "Sierra Leone"
                    },
                    {
                    "shortname": "SG",
                    "longname": "Singapore"
                    },
                    {
                    "shortname": "SK",
                    "longname": "Slovakia"
                    },
                    {
                    "shortname": "SI",
                    "longname": "Slovenia"
                    },
                    {
                    "shortname": "SB",
                    "longname": "Solomon Islands"
                    },
                    {
                    "shortname": "SO",
                    "longname": "Somalia"
                    },
                    {
                    "shortname": "ZA",
                    "longname": "South Africa"
                    },
                    {
                    "shortname": "GS",
                    "longname": "South Georgia and the South Sandwich Islands"
                    },
                    {
                    "shortname": "ES",
                    "longname": "Spain"
                    },
                    {
                    "shortname": "LK",
                    "longname": "Sri Lanka"
                    },
                    {
                    "shortname": "SD",
                    "longname": "Sudan"
                    },
                    {
                    "shortname": "SR",
                    "longname": "Suriname"
                    },
                    {
                    "shortname": "SJ",
                    "longname": "Svalbard and Jan Mayen"
                    },
                    {
                    "shortname": "SZ",
                    "longname": "Swaziland"
                    },
                    {
                    "shortname": "SE",
                    "longname": "Sweden"
                    },
                    {
                    "shortname": "CH",
                    "longname": "Switzerland"
                    },
                    {
                    "shortname": "SY",
                    "longname": "Syrian Arab Republic"
                    },
                    {
                    "shortname": "TW",
                    "longname": "Taiwan, Province Of China"
                    },
                    {
                    "shortname": "TJ",
                    "longname": "Tajikistan"
                    },
                    {
                    "shortname": "TZ",
                    "longname": "Tanzania, United Republic of"
                    },
                    {
                    "shortname": "TH",
                    "longname": "Thailand"
                    },
                    {
                    "shortname": "TL",
                    "longname": "Timor-Leste"
                    },
                    {
                    "shortname": "TG",
                    "longname": "Togo"
                    },
                    {
                    "shortname": "TK",
                    "longname": "Tokelau"
                    },
                    {
                    "shortname": "TO",
                    "longname": "Tonga"
                    },
                    {
                    "shortname": "TT",
                    "longname": "Trinidad and Tobago"
                    },
                    {
                    "shortname": "TN",
                    "longname": "Tunisia"
                    },
                    {
                    "shortname": "TR",
                    "longname": "Turkey"
                    },
                    {
                    "shortname": "TM",
                    "longname": "Turkmenistan"
                    },
                    {
                    "shortname": "TC",
                    "longname": "Turks and Caicos Islands"
                    },
                    {
                    "shortname": "TV",
                    "longname": "Tuvalu"
                    },
                    {
                    "shortname": "UG",
                    "longname": "Uganda"
                    },
                    {
                    "shortname": "UA",
                    "longname": "Ukraine"
                    },
                    {
                    "shortname": "AE",
                    "longname": "United Arab Emirates"
                    },
                    {
                    "shortname": "UM",
                    "longname": "United States Minor Outlying Islands"
                    },
                    {
                    "shortname": "UY",
                    "longname": "Uruguay"
                    },
                    {
                    "shortname": "UZ",
                    "longname": "Uzbekistan"
                    },
                    {
                     "shortname": "UK",
                      "longname": "UK"
                     },
                    {
                    "shortname": "VU",
                    "longname": "Vanuatu"
                    },
                    {
                    "shortname": "VE",
                    "longname": "Venezuela"
                    },
                    {
                    "shortname": "VN",
                    "longname": "Viet Nam"
                    },
                    {
                    "shortname": "VG",
                    "longname": "Virgin Islands, British"
                    },
                    {
                    "shortname": "VI",
                    "longname": "Virgin Islands, U.S."
                    },
                    {
                    "shortname": "WF",
                    "longname": "Wallis And Futuna"
                    },
                    {
                    "shortname": "EH",
                    "longname": "Western Sahara"
                    },
                    {
                    "shortname": "YE",
                    "longname": "Yemen"
                    },
                    {
                    "shortname": "ZM",
                    "longname": "Zambia"
                    },
                    {
                    "shortname": "ZW",
                    "longname": "Zimbabwe"
                    }
                    ]
    }
};
AppyTemplate.registerHelper('getCountry',function (type) {


                            var s = "";
                            //    s += '<option value="" disabled selected>Select Country</option>';

                            $$.each(countryArrayList.countryList.country, function(i, v){
                                    if(v.longname==type)
                                    {
                                    s += '<option selected="selected" value="'+v.longname+'"  id="'+v.shortname+'">'+v.longname+'</option>';
                                    }
                                    else
                                    {
                                    s += '<option value="'+v.longname+'"  id="'+v.shortname+'">'+v.longname+'</option>';
                                    }

                                    //s += '<option value="'+v.longname+'"  id="'+v.shortname+'">'+v.longname+'</option>';
                                    });

                           return s;
                            })

Appyscript.formSerialize = function() {
    var data = {
        "type": [],
        "value": [],
        "label": [],
        "error": [],
        "jsonInputField": []
    }

    var timeRegex = /^([0]?[1-9]|1[0-2]):([0-5]\d)\s?(AM|PM)$/i;
    var prev_value = "";
    var prev_label = "";
    var customField = $$(".customField");
    if (signupView) {
        customField = $$('.page[data-page="signup-page"]').find(".customField");
    }
    signupView = false;

    if (AppyTemplate.global.customFieldFlag == "1") {
        customField = $$(".customField");
    }
    customField.each(function() {
        var thisType = $$(this).attr("type");
        var thisMandatory = parseInt($$(this).attr("mandatory"));
        var thisValue = $$(this).find("input").eq(0).val();
        var thisLabel = $$(this).find("input").eq(0).attr("placeholder");
        var thisFieldID = $$(this).attr("ctype"); //Added by tushar on 2 Aug,2017 for custom sign up and profile

        var thisError = 0;
        if (thisType == "date") {
            if (thisMandatory && thisValue != "") {

                if (thisValue.indexOf("/") != -1) {

                    var d = thisValue.split("/");
                    var dateSplit = [d[1], d[0], d[2]].join('/');
                    if (isNaN(Date.parse(dateSplit)))
                    //if(isNaN(Date.parse(thisValue)))
                    {
                        thisError = 1;
                    }
                }
            } else if (thisMandatory && thisValue == "") {
                thisError = 1;
            }
        }
        if (thisType == "time") {
            if (thisMandatory || thisValue != "") {
                if (!timeRegex.test(thisValue)) {
                    thisError = 1;
                }
            }
        }
        if (thisType == "email") {
            if (thisMandatory || thisValue != "") {
                if (!Appyscript.validateEmail(thisValue)) {
                    thisError = 1;
                }
            }
        }
        if (thisType == "state" || thisType == "name") {
            if (thisMandatory) {
                if (thisValue.trim() == "") {
                    thisError = 1;
                }
                if (!Appyscript.checkNameState(thisValue)) {
                    //  thisError = 1;
                }
            }

        }

        if (thisType == "phone") {
           if(AppyPieNative.isLocationEnabled()) {
            Appyscript.setCountryCodeByLocation();
            }
            setTimeout(function () {
            if (thisMandatory || thisValue != "") {

                if (!Appyscript.validatePhone(thisValue)) {
                    thisError = 1;
                }
                 var str1= localStorage.messengercountry;
                 if(str1)
                 {
                  thisValue = str1.concat(thisValue);
                 }
                 else
                 {
                 thisValue=thisValue;
                 }

                   console.log("thisValue========"+thisValue);
            }
            },3000);
        }

        if (thisType == "text") {
            if (thisMandatory) {
                if (thisValue.trim() == "") {
                    thisError = 1;
                }
            }
        }


        if (thisType == "textarea") {
            thisValue = $$(this).find("textarea").eq(0).val();
            thisLabel = $$(this).find("textarea").eq(0).attr("placeholder");
            if (thisMandatory) {
                if (thisValue.trim() == "") {
                    thisError = 1;
                }
            }
        }

        if (thisType == "gender" || thisType == "country" || thisType == "select" || thisType == "emailEnquiryList") {
            thisValue = $$(this).find("select").eq(0).val();
            thisLabel = $$(this).find("select").eq(0).attr("placeholder");
            if (thisMandatory) {
                if (thisValue == "0") {
                    thisError = 1;
                }
            }
        }

        if (thisType == "category") {
            thisValue = $$(this).find("select").eq(0).val();
            thisLabel = $$(this).find("select").eq(0).attr("placeholder");
            if (thisMandatory) {
                if (thisValue == "0") {
                    thisError = 1;
                }
            }
            if (thisValue != "0") {
                thisValue = $$(this).find("select option[value='" + thisValue + "']").text();
                prev_value = thisValue;
                prev_label = thisLabel;
            }
        }

        if (thisType == "listPrice") {
            thisValue = $$(this).find("select").eq(0).val();
            thisLabel = $$(this).find("select").eq(0).attr("placeholder");
            if (thisMandatory) {
                if (thisValue == "") {
                    thisError = 1;
                }
            }
            if (thisValue != "0") {
                thisValue = $$(this).find("select option[value='" + thisValue + "']").attr("text");
            }
        }

        if (thisType == "multiselect") {
            thisLabel = $$(this).find("select").eq(0).attr("placeholder");
            var selectArray = [];
            $$(this).find("select").eq(0).find("option").each(function() {
                if (this.selected) {
                    selectArray.push(this.value)
                };
            })
            thisValue = selectArray.join(",");
            if (thisMandatory) {
                if (selectArray.length == 0) {
                    thisError = 1;
                }
            }
        }

        if (thisType == "group") {
            thisLabel = $$(this).find("select").eq(0).attr("placeholder").replace("*", "");
            //   thisLabel = $('select option:selected').text();
            thisValue = $$(this).find("select").val();
            console.log("group thisValue ==" + thisValue);
            console.log("group thisLabel ==" + thisLabel);
            if (thisMandatory) {
                if (thisValue == "0") {
                    thisError = 1;
                }
            }
        }


if(thisType == "barcode")
                            {
                            if(thisMandatory)
                            {
                            if(thisValue.trim() == "")
                            {
                            thisError = 1;
                            }
                            }
                            }

                            if(thisType == "qrcode")
                            {
                            if(thisMandatory)
                            {
                            if(thisValue.trim() == "")
                            {
                            thisError = 1;
                            }
                            }
                            }


        if (thisType == "checkbox") {
            var checkboxArray = [];
            thisLabel = $$(this).find(".label-head").text();
            $$(this).find("input").each(function() {
                if (this.checked) {
                    checkboxArray.push($$(this).val());
                }
            })
            thisValue = checkboxArray.join(",");
            if (thisMandatory) {
                if (checkboxArray.length == 0) {
                    thisError = 1;
                }
            }
        }

        if (thisType == "radio") {
            thisLabel = $$(this).find(".label-head").text();
            thisValue = "";
            var thisRadio = $$(this);
            $$(this).find("input").each(function() {
                if (this.checked) {
                    if ($$(this).parent().is(".other")) {
                        thisValue = thisRadio.find("input[type='text']").val();
                    } else {
                        thisValue = $$(this).val();
                    }
                }
            })
            if (thisMandatory) {
                if (thisValue == "") {
                    thisError = 1;
                }
            }
        }

        if (thisType == "uploadPicture") {

        if($$(this).find("#fileUpload_fb").length)
          // var fileQuery=localStorage.getItem("customFile");
          {
          var fileArray=[];

                       input = $$(this).find(".formBuilderFileUpload")[0];
                          if (!input) {
                          if (thisMandatory)
                              thisError = 1;
                          }
                          else if (!input.files) {
                          if (thisMandatory)
                             thisError = 1;
                          }
                          else if (!input.files[0]) {
                          if (thisMandatory)
                             thisError = 1;
                          }else{
                        thisLabel="File"
                        thisValue=$$(this).find(".formBuilderFileUpload")[0].files[0].name;

                          var file= $$(this).find(".formBuilderFileUpload").prop('files')[0];
                         // var fileTest=$(".formBuilderFileUpload")[0].files[0]
                          fileFormBuilderArray.push(file);
                         }
                         }else{
                         if (AppyTemplate.global.customFieldFlag == "1") {
                                              thisLabel = "Upload File";
                                              if (thisMandatory) {
                                              if (thisValue.trim() == "") {
                                              thisError = 1;
                                              }
                                              }
                                              } else {

                                              thisValue = "uploadPicture";
                                              thisLabel = $$(this).find(".select-file font").attr("data-val");
                                              try {
                                              thisValue = $$(this).find(".select-file font").attr("file-exit");
                                              if (thisValue) {
                                              var n = thisValue.lastIndexOf("/");
                                              thisValue = thisValue.substring(n + 1);
                                              console.log("Selected Image: " + thisValue);
                                              }

                                              if (thisMandatory) {
                                              if (thisValue.length == 0) {
                                              thisError = 1;
                                              }
                                              }
                                              } catch (err) {
                                              thisError = 1;
                                              }
                                              }
                         }
        // thisValue  = dataURItoBlob(fileQuery);

//            if (AppyTemplate.global.customFieldFlag == "1") {
//                thisLabel = "Upload File";
//                if (thisMandatory) {
//                    if (thisValue.trim() == "") {
//                        thisError = 1;
//                    }
//                }
//            } else {
//
//                thisValue = "uploadPicture";
//                thisLabel = $$(this).find(".select-file font").attr("data-val");
//                try {
//                    thisValue = $$(this).find(".select-file font").attr("file-exit");
//                    if (thisValue) {
//                        var n = thisValue.lastIndexOf("/");
//                        thisValue = thisValue.substring(n + 1);
//                        console.log("Selected Image: " + thisValue);
//                    }
//
//                    if (thisMandatory) {
//                        if (thisValue.length == 0) {
//                            thisError = 1;
//                        }
//                    }
//                } catch (err) {
//                    thisError = 1;
//                }
//            }

        }


        if (thisType == "subCategory" || thisType == "subCategoryPrice") {
            thisValue = $$(this).find("select").eq(0).val();
            thisLabel = $$(this).find("select").eq(0).attr("placeholder");
            if ($$(this).find("select").eq(0).is(".show")) {
                if (thisMandatory) {
                    if (thisValue == "0") {
                        thisError = 1;
                    }
                }
                if (thisValue != "0") {
                    thisValue = prev_value + " -> " + $$(this).find("select option[value='" + thisValue + "']").text();
                }
            }
        }

        if (thisType == "subCategory" || thisType == "subCategoryPrice") {
            if ($$(this).find("select").eq(0).is(".show")) {

                if (thisValue == "0") {
                    thisValue = "";
                }
                data.type.push(thisType);
                data.value.push(thisValue);
                data.label.push(prev_label);
                data.error.push(thisError);
                console.log(thisValue)
                if (thisValue != undefined || thisValue != null ) {

                    var extractNameFromValue = thisValue.split("/login/");

                    var length = extractNameFromValue.length;

                    if (thisType == "uploadPicture" && length > 1) {
                        data.jsonInputField.push({
                            "fieldId": thisFieldID,
                            "fieldType": thisType,
                            "fieldLebal": prev_label,
                            "fieldValue": extractNameFromValue[1]
                        });
                    } else {
                        data.jsonInputField.push({
                            "fieldId": thisFieldID,
                            "fieldType": thisType,
                            "fieldLebal": prev_label,
                            "fieldValue": thisValue
                        });
                    }

                }
            }
        } else {
            if (thisValue == "0") {
                thisValue = "";
            }
            data.type.push(thisType);
            data.value.push(thisValue);
            data.label.push(thisLabel);
            data.error.push(thisError);

            console.log(thisValue)

            if (thisValue != undefined || thisValue != null) {

//                var extractNameFromValue = thisValue.split("/login/");
//
//                var length = extractNameFromValue.length;
//
//                if (thisType == "uploadPicture" && length > 1) {
//                    data.jsonInputField.push({
//                        "fieldId": thisFieldID,
//                        "fieldType": thisType,
//                        "fieldLebal": thisLabel,
//                        "fieldValue": extractNameFromValue[1]
//                    });
//                } else {
//                    data.jsonInputField.push({
//                        "fieldId": thisFieldID,
//                        "fieldType": thisType,
//                        "fieldLebal": thisLabel,
//                        "fieldValue": thisValue
//                    });
//                }
                    data.jsonInputField.push({
                        "fieldId": thisFieldID,
                        "fieldType": thisType,
                        "fieldLebal": thisLabel,
                        "fieldValue": thisValue
                    });
            }
        }

    });
    return data;
}
var globaldatecorrectformat;
Appyscript.formSettings = function() {
    setTimeout(function() {
        $$("li[type='date']").each(function() {
            var thisR = $$(this);
            thisR.find("input").attr("type", "text");
            thisR.append('<input type="date" class="date-hit">');
            thisR.find("input").eq(1).change(function() {
                if ($$(this).val() == "") {
                    thisR.find("input").eq(0).val("");
                } else {
                    var current = new Date();
                    var currenttime = (current.toLocaleTimeString().split(" "))[0];
                    var a = new Date($$(this).val());
                    globaldatecorrectformat = $$(this).val();
                    console.log("globaldatecorrectformat=====  " + globaldatecorrectformat);
                    var temp = $$(this).val().split('-');
                    var dateformat = parseInt(temp[1]) + '/' + parseInt(temp[2]) + '/' + temp[0];
                    var currentdate = new Date(dateformat + ' ' + currenttime);



                    if (currentdate == "Invalid Date") {
                        currentdate = a;
                    }
                    console.log("currentdateee =====" + currentdate);
                    navigator.globalization.dateToString(
                        currentdate,
                        function(dateformatt) {
                            thisR.find("input").eq(0).val(dateformatt.value);
                        },
                        function() {
                            console.log('Error getting dateString\n');
                        }, {
                            formatLength: 'medium',
                            selector: 'date'
                        }
                    );
                    if (!isNaN(dateformat.charAt(0))) {
                        // thisR.find("input").eq(0).val(a.getUTCDate() + "/" + (a.getUTCMonth()+1) + "/"+a.getUTCFullYear());
                    } else {
                        // thisR.find("input").eq(0).val((a.getUTCMonth()+1)  + "/" + a.getUTCDate() + "/"+a.getUTCFullYear());

                    }
                }
            })
        })
        $$("li[type='time']").each(function() {
            var thisR = $$(this);
            thisR.find("input").attr("type", "text");
            thisR.append('<input type="time" class="time-hit">');
            thisR.find("input").eq(1).change(function() {
                if ($$(this).val() == "") {
                    thisR.find("input").eq(0).val("");
                } else {
                    if (formBuilderData != undefined && formBuilderData.appScheduleFormat != undefined && formBuilderData.appScheduleFormat) {
                        thisR.find("input").eq(0).val($$(this).val());
                    } else {
                        var a = $$(this).val().split(":");
                        var h = a[0] % 12 || 12;
                        var ampm = a[0] < 12 ? "AM" : "PM";
                        thisR.find("input").eq(0).val(h + ":" + a[1] + " " + ampm);
                    }

                }
            })
        })

        $$("li[type='radio']").each(function() {
            var thisR = $$(this);
            thisR.find("label").click(function() {
                thisR.find("label").each(function() {
                    $$(this).find("input")[0].checked = false;
                })
                $$(this).find("input")[0].checked = true;
            })
        })

        $$("li[type='category']").each(function() {
            var thisR = $$(this);
            thisR.find("ul li").attr("data-rel", thisR.find("ul").attr("index")).attr("mandatory", thisR.find("ul").attr("mandatory")).insertAfter(thisR);
            thisR.find("ul").remove();
        })

        $$("li[type='multiselect']").find("select").change(multiSelectChange);

        $$("li[type='subCategory'],li[type='subCategoryPrice']").hide();

        $$("li[type='category'] select").change(function() {
            var thisID = $$(this).attr("id");
            var thisRel = $$(this).attr("data-rel");
            var next = $$(this).parent().parent()[0].nextSibling;
            if ($$(this).val() == "0") {
                $$(next).hide().find("select").removeClass("show");
            } else {
                var categoryData = formBuilderData.customData[$$(this).attr("id")].category;
                //var a = '<option value="0">Select</option>';
                var a = '';
                $$.each(categoryData.list[$$(this).val().replace("item", "")].subcat, function(index, value) {
                    if (thisRel == "subcat") {
                        a += '<option value="' + value.subCatName + '">' + value.subCatName + '</option>';
                    }
                    if (thisRel == "subcatPrice") {
                        a += '<option value="' + value.price + '">' + value.subCatName + ' (' + formBuilderData.defaultCurrency + ' ' + value.price + ')</option>';
                    }
                })
                $$(next).find(".label").text($$(this).find("option").eq($$(this)[0].selectedIndex).text());
                $$(next).show().find("select").addClass("show").html(a);
            }
            changePriceData();
        })


        function changePriceData() {
            var amount = 0;
            $$("li[type='listPrice'] select").each(function() {
                if (parseInt($$(this).val()) != 0) {
                    amount +=parseInt($$(this).val());
                }
            })
            $$("li[type='subCategoryPrice'] select").each(function() {
                if ($$(this).is(".show")) {
                    if ((parseInt($$(this).val()) != 0)) {
                        amount = amount + parseInt($$(this).val());
                    }
                }
            })
            subOptionAmount = amount;
            //$$("#amount").val(amount)
            //$$("#amount").val(amount).attr("totalAmt", amount);
        }

        $$("li[type='listPrice'] select").on("change", changePriceData);
        $$("li[type='subCategoryPrice'] select").on("change", changePriceData);
        changePriceData();

    }, 200)
}


AppyTemplate.registerHelper('formatDate', function(date, options) {
    /*
    date = new Date(date);
    var months = ('Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec').split(' ');
    var time=  date.getHours() + ":" +  date.getMinutes() + ":" +  date.getSeconds();
    var newData=[ date.getDate(date),months[date.getMonth(date)], date.getFullYear(), time];
    return newData[options];
    */

    var a = date.split(/[^0-9]/);
    var d = new Date(a[0], a[1] - 1, a[2], a[3], a[4], a[5]);
    date = d;
    var months = ('Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec').split(' ');
    //var time = date.getHours() + ":" +  date.getMinutes() + ":" +  date.getSeconds();
    var time = date.toTimeString().split(" ")[0];
    var newData = [date.getDate(date), months[date.getMonth(date)], date.getFullYear(), time];

    return newData[options];
});

AppyTemplate.registerHelper('root_Compare', function(a, operator, b, options) {
    var match = false;
    if ((operator === '==' && a == b) || (operator === '===' && a === b) || (operator === '!==' && a !== b) || (operator === '!=' && a != b) || (operator === '>' && a > b) || (operator === '<' && a < b) || (operator === '>=' && a >= b) || (operator === '<=' && a <= b) || (operator === '||' && a != b) || (operator === '&&' && a != b)) {
        match = true;
    }
    if (match) return options.fn(this);
    else return options.inverse(this);
});


AppyTemplate.registerHelper('youtubeID', function(youtubeurl, options) {
    result = youtubeurl.match(/(?:https?:\/{2})?(?:w{3}\.)?youtu(?:be)?\.(?:com|be)(?:\/watch\?v=|\/)([^\s&]+)/);
    var youtubeurlID = "";
    if (result) {
        youtubeurlID = result[1];
        if (youtubeurlID.indexOf("/") != -1) {
            youtubeurlID = youtubeurlID.split("/");
            youtubeurlID = youtubeurlID[1];
        }
    }
    return youtubeurlID;
});

AppyTemplate.registerHelper('formateKM', function(num, options) {
    num = parseInt(num);
    if (num > 999999) {
        return (num / 1000000).toFixed(1) + "M";
    } else {
        if (num > 999) {
            return (num / 1000).toFixed(1) + "K";
        } else {
            return num;
        }
    }
});


function kFormatter(num) {

}

/*
 * To check mandatory form data
 * return true if no fields are blank/left.
 * Made by Mohsin
 */
Appyscript.getCustomFormData = function() {
    var customData = Appyscript.formSerialize();
    customData.flag = true;
    $$.each(customData.error, function(index, value) {
        if (value && customData.flag) {
            $$(".customField").eq(index).addClass("error");
            customData.flag = false;
            var checkErrorValidation = Appyscript.getCustomFormErrorTypeValidation(customData, index);
            if (checkErrorValidation == true) {
                if (formBuilderData) {
                    Appyscript.alert(formBuilderData.submissionErrorMsg);
                } else {
                    Appyscript.alert("Please enter mandatory field properly.");
                }
                return customData;

            } else {}

        }
    });
   // customData.flag = cfb_validateFiles();
    return customData;
}

Appyscript.getCustomFormErrorTypeValidation = function(customData, index) {

    if (customData.type[index] == "phone") {
        Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_number_dir);
        return false;
    } else if (customData.type[index] == "name") {
        Appyscript.alert(AppyTemplate.global.commonLanguageSetting.signup_entername_alert);
        return false;
    } else if (customData.type[index] == "email") {
        Appyscript.alert(AppyTemplate.global.commonLanguageSetting.Sign_up_email);
        return false;
    }
    return true;
}

Appyscript.getCustomFormSignUpErrorTypeValidation = function(customData, index, loginLanguagSetting) {

    if (customData.type[index] == "phone") {

        Appyscript.alert(loginLanguagSetting.languageSetting.mandatory_fields_cant_be_left_blank);
        return false;
    } else if (customData.type[index] == "name") {
        Appyscript.alert(loginLanguagSetting.languageSetting.mandatory_fields_cant_be_left_blank);
        return false;
    } else if (customData.type[index] == "email") {
        if (customData.value[index] == "") {
            Appyscript.alert(loginLanguagSetting.languageSetting.mandatory_fields_cant_be_left_blank);
        } else if (!Appyscript.validateEmail(customData.value[index])) {
            Appyscript.alert(loginLanguagSetting.languageSetting.Sign_up_email);
        }

        return false;
    }
    return true;
}
var signupView = false;
Appyscript.getCustomFormDataSignup = function() {
    signupView = true;
    var customData = Appyscript.formSerialize();
    console.log("===== custom data : " + JSON.stringify(customData));
    customData.flag = true;

    $$.each(customData.error, function(index, value) {
        if (value && customData.flag) {

            $$('.page[data-page="signup-page"]').find(".customField").eq(index).addClass("error");
            customData.flag = false;
            var checkErrorValidation = Appyscript.getCustomFormSignUpErrorTypeValidation(customData, index, loginLanguagSetting);

            if (checkErrorValidation == true) {

                /*if(formBuilderData)
                {

                  Appyscript.alert(formBuilderData.submissionErrorMsg);
                }
                else
                {
                   Appyscript.alert("Please enter mandatory field properly.");
                }*/
                if (loginLanguagSetting != null) {
                    Appyscript.alert(loginLanguagSetting.languageSetting.mandatory_fields_cant_be_left_blank);
                }

                return customData;

            }

        }
    });



    return customData;
}

/*
 * To add image in FormData
 * Create new instance of imageFD at the end of every data submission, set flag false and index 1.
 * Made by Mohsin
 */
var imageFD = new FormData();
var imageFDFlag = false;
var imageIndex = 1;
var savedImageFD = new FormData();

Appyscript.selectedFile = function(a, filef, filename) {
    /*
 if(a.files[0])
 {
  imageFDFlag=true;
  $$(a).parent().find("font").text(a.files[0].name);
     imageFD.append("myfile"+(imageIndex), a.files[0]);
     imageFD.append("imageName"+(imageIndex++), a.files[0].name);
     savedImageFD.append("myfile"+(imageIndex), a.files[0]);
     savedImageFD.append("imageName"+(imageIndex++), a.files[0].name);
 }
  */
    // var file=AppyPieNative.getFileForm(filef);
    // console.log("File Detail :"+file);
    imageFDFlag = true;
    $$(a).parent().find("font").text(filename).attr("file-exit", filef);
    imageFD.append("myfile" + (imageIndex), filef);
    imageFD.append("imageName" + (imageIndex++), filename);
    savedImageFD.append("myfile" + (imageIndex), filef);
    savedImageFD.append("imageName" + (imageIndex++), filename);


}

/*
 * Convert string with separated by comma to json data with index value
 * Made by Mohsin
 */

Appyscript.convertStringToJson = function(str) {
    var jsonData = {};
    for (var i = 0; i < str.length; i++) {

//        if (str[i] != undefined)
//            jsonData[i] = str[i].split("####").join(",");
 if (str[i] != undefined)
           jsonData[i] = str[i]
    }
    return jsonData;
}

/*
 * To check email is valid or not
 * return true or false
 * Made by Mohsin
 */
Appyscript.validateEmail = function(emailId) {
    var emailRegex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return emailRegex.test(emailId);
}


/*To check phone is valid or not
 * return true or false*/
Appyscript.validatePhone = function(phoneno) {
    // var emailRegex = /^(?!.*-.*-.*-)(?=(?:\d{8,10}$)|(?:(?=.{9,11}$)[^-]*-[^-]*$)|(?:(?=.{10,12}$)[^-]*-[^-]*-[^-]*$)  )[\d-]+$/;
    //return emailRegex.test(phoneno);
    if (phoneno.length >= 1)
        return phoneno;
}

/*
 * To check date must not be a previous date.
 * return true or false
 * Made by Mohsin
 */
//Appyscript.validateDate=function(date){
//    var current = new Date();
//        var currentdate = current.toLocaleDateString();
//        var currenttime = current.toLocaleTimeString();
//         var entereddatefinal=new Date(date+' '+currenttime);
//
//         if(entereddatefinal=="Invalid Date")
//                                {
//               entereddatefinal=currentdate;
//         return true;
//
//           }
//          else{
//
//
//        var entereddate = entereddatefinal.toLocaleDateString();
//        if (Date.parse(entereddate) >= Date.parse(currentdate))
//        return true;
//}
//        return false;
//
//}



Appyscript.validateDate = function(date) {
    var current = new Date();
    var currentdate = current.toLocaleDateString();
    var currenttime = current.toLocaleTimeString();
    var entereddatefinal = new Date(date + ' ' + currenttime);
    var entereddate = entereddatefinal.toLocaleDateString();
    if (entereddatefinal == "Invalid Date") {
        /* var temp=globaldatecorrectformat.split('-');
          var dateformat=parseInt(temp[2])+'/'+parseInt(temp[1])+'/'+temp[0];
         */
        entereddatefinal = new Date(globaldatecorrectformat + ' ' + currenttime);

    }
    // if (Date.parse(entereddate) >= Date.parse(currentdate))
    if (Date.parse(entereddatefinal) >= Date.parse(current)) {
        return true;
    }
    return false;
}




//encrption and decryption functions
function d2h(d) {
    return d.toString(16);
}

function h2d(h) {
    return parseInt(h, 16);
}

function stringToHex(tmp) {
    var str = '',
        i = 0,
        tmp_len = tmp.length,
        c;

    for (; i < tmp_len; i += 1) {
        c = tmp.charCodeAt(i);
        str += d2h(c) + ' ';
    }
    return str;
}

function hexToString(tmp) {
    var arr = tmp.split(' '),
        str = '',
        i = 0,
        arr_len = arr.length,
        c;

    for (; i < arr_len; i += 1) {
        c = String.fromCharCode(h2d(arr[i]));
        str += c;
    }

    return str;
}

function EncryptOrDecrypt(type, string) {

    var newString = "";
    if (type.toLowerCase() == "encrypt") {
        var encodedString = Base64.encode(string);
        //var encodedString = window.btoa(string);
        newString = encodedString.concat(secureKey);
        var strToHex = stringToHex(newString);
        return strToHex;
    } else if (type.toLowerCase() == "decrypt") {
        var decodedString = hexToString(string);
        if (decodedString.indexOf(secureKey) != -1) {
            newString = decodedString.replace(secureKey, "");
            newString = Base64.decode(newString);
            //newString = window.atob(newString);
            return newString;
        }
    } else {
        return false;
    }
}

function ReturnHexDataWithSpace(data) {
    var s = data;
    var L = s.length;
    L = (L % 2) ? 'a' + s.charAt(L - 1) : '';
    var M = s.match(/(.{2})/g);
    if (M) s = M.join(' ') + L;

    return s;
}

AppyTemplate.registerPartial('innerBackground', '{{#if @global.styleAndNavigation.background}}{{#root_Compare @global.styleAndNavigation.backgroundType "==" "color"}}<div class="background-image" style="background-color:{{@global.styleAndNavigation.background}}"></div>{{/root_Compare}}{{#root_Compare @global.styleAndNavigation.backgroundType "==" "image"}}<div class="background-image portrait" style="background-image:url({{@global.styleAndNavigation.background}})"></div><div class="background-image landscape" style="background-image:url({{@global.styleAndNavigation.ipadBackground}})"></div>{{/root_Compare}}<div class="background-theme {{@global.style.appTheme}}"></div>{{/if}}');

AppyTemplate.registerPartial('mainBackground', '{{#root_Compare @global.style.backgroundType "!==" "bganimation"}}' +
    '{{#root_Compare @global.style.backgroundType "==" "custom_image"}}' +
    '<div class="background-image portrait" style="background-image:url({{@global.style.appBackground[0]}})"></div>' +
    '<div class="background-image landscape" style="background-image:url({{@global.style.appIpadBackground[0]}})"></div>' +
    '{{else}}' +
    '<div class="background-image" style="' +
    '{{#root_Compare @global.style.backgroundType "==" "custom_color"}}' +
    'background-color:{{@global.style.appBackground[0]}}' +
    '{{/root_Compare}}' +
    '{{#root_Compare @global.style.backgroundType "==" "library_image"}}' +
    'background-image:url({{@global.style.appBackground[0]}})' +
    '{{/root_Compare}}"></div>' +
    '{{/root_Compare}}' +
    '{{else}}' +
    '{{#@global.style.appBackground}}' +
    '<img src="{{this}}" />' +
    '{{/@global.style.appBackground}}' +
    '{{/root_Compare}}' +
    '<div class="background-theme {{@global.style.appTheme}}"></div>');


/*AppyTemplate.registerPartial('errorpage','{{#if @root.styleAndNavigation}}'+
                             '<div class="msg-container">'+
                             '{{#js_compare "this.iconType === \'img\' "}}<img src="{{errorIcon}}" class="imgIcon">'+
                             '{{else}}'+
                             '<span class="icon {{errorIcon}}" style="color: {{@root.styleAndNavigation.content[2]}}; border-color:{{@root.styleAndNavigation.content[2]}};">  </span>'+
                             '{{/js_compare}}'+
                             '{{#if heading}}<h2 clas="{{@root.styleAndNavigation.heading[1]}}" style="color: {{@root.styleAndNavigation.heading[2]}};">{{heading}}</h2>  {{/if}}'+
                             '<h2 class="{{@root.styleAndNavigation.content[1]}}" style="color: {{@root.styleAndNavigation.content[2]}};">{{errortext}}</h2>'+
                             '</div>'+
                             '{{else}}'+
                            ' <div class="msg-container">'+
                             '{{#js_compare "this.iconType === \'img\' "}}<img src="{{errorIcon}}" class="imgIcon">'+
                             '{{else}}'+
                             '<span class="icon {{errorIcon}}" style="color:{{@global.style.pageIconColor}}; font-family:{{@global.style.appPageFont}};">  </span>'+
                              '{{/js_compare}}'+
                             '{{#if heading}}<h2 class="{{@global.style.appPageShsize}}" style="color:{{@global.style.pageTextColor}}; font-family:{{@global.style.appPageFont}};">{{heading}}</h2>  {{/if}}'+
                             '<h2 class="{{@global.style.appPageCsize}}" style="color:{{@global.style.pageTextColor}}; font-family:{{@global.style.appPageFont}};">{{errortext}}</h2>'+
                             '</div>{{/if}}');*/


AppyTemplate.registerPartial('errorpage', ' <div class="msg-container">' +
    '{{#js_compare "this.iconType === \'img\' "}}<img src="{{errorIcon}}" class="imgIcon">' +
    '{{else}}' +
    '<span class="icon {{errorIcon}}" style="color: {{@global.styleAndNavigation.content[2]}};">  </span>' +
    '{{/js_compare}}' +
    '' +
    '' +
    '</div>');

Appyscript.getPayPalHtml = function(paymentType, paypalId, amount, currency, requestId, successUrl, notifyUrl) {
    var click, type;
    if (paymentType == "yearly") {
        type = "Y";
        click = "-subscriptions";
    } else if (paymentType == "monthly") {
        type = "M";
        click = "-subscriptions";
    } else {
        type = "";
        click = "";
    }

    var url_prefix = "";
    if (paypalId == "amitjs_1300292032_biz@live.com" || paypalId == "himanshut@onsinteractive.com" || paypalId == "murli@appypie.com") {
        url_prefix = "https://www.sandbox.";
    } else {
        url_prefix = "https://www.";
    }

    var paymentFor = 'Payment for ' + window.data.appData.appName + '(' + window.data.appData.appId + ')';
    var paypalIdHtml = '<!DOCTYPE HTML><html><body onload="ClickButtonPaypal();"><form action="' + url_prefix + 'paypal.com/cgi-bin/webscr" method="post"><!-- Identify your business so that you can collect the payments. --><input type="hidden" name="business" value="' + paypalId + '">';
    var paypalAddFormHtml = '<!-- Specify a Buy Now button. -->' +
        '<input type="hidden" name="cmd" value="_xclick' + click + '">' +
        '<!-- Specify details about the item that buyers will purchase. -->' +
        '<input type="hidden" name="item_name" value="' + paymentFor + '">' +
        '<input type="hidden" name="amount" value="' + amount + '">' +
        '<input type="hidden" name="a3" value="' + amount + '">' +
        '<input type="hidden" name="p3" value="1">' +
        '<input type="hidden" name="t3" value="' + type + '">' +
        '<input type="hidden" name="src" value="1">' +
        '<input type="hidden" name="currency_code" value="' + currency + '">' +
        '<input type="hidden" name="quantity" value="1">' +
        '<input type="hidden" name="custom" value="' + requestId + '">';

    var PaypalUrlFormHtml = '<!-- URL --><input type="hidden" name="return" value="' + successUrl + '" /><input type="hidden" name="cancel_return" value="https://gauravpaypal.com/" /><input type="hidden" name="notify_url" value="' + notifyUrl + '" /><!-- Display the payment button. --><input type="image" src="{URL}/images/subscribe_btn.png" name="submit" id="submit" alt="PayPal - The safer, easier way to pay online!"><img alt="" border="0" src="' + url_prefix + 'paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1"></form><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script><script>function ClickButtonPaypal(){$(\'#submit\').trigger(\'click\');}</script></body></html>';

    return (paypalIdHtml + paypalAddFormHtml + PaypalUrlFormHtml);
}

/*PayFast*/
Appyscript.getPayFastHtml = function(paymentType, merchantId, merchantKey, amount, currency, requestId, successUrl, cancelUrl, notifyUrl, payFastUsername, payFastEmail, payFastproductName, payFastproductDescrip) {
    var click, type;
    if (paymentType == "yearly") {
        type = "Y";
        click = "-subscriptions";
    } else if (paymentType == "monthly") {
        type = "M";
        click = "-subscriptions";
    } else {
        type = "";
        click = "";
    }

    var url_prefix = "";
    if (merchantId == "10005646" || merchantId == "10007323") {
        url_prefix = "https://sandbox.payfast.co.za";
        // https://sandbox.payfast.co.za/eng/process
    } else {
        url_prefix = "https://www.payfast.co.za";
    }

    var paymentFor = 'Payment for ' + window.data.appData.appName + '(' + window.data.appData.appId + ')';
    var paypalIdHtml = '<!DOCTYPE HTML><html><body onload="ClickButtonPayFast();"><form action="' + url_prefix + '/eng/process" method="post"><!-- Identify your business so that you can collect the payments. --><input name="merchant_id" type="hidden" value="' + merchantId + '" /><input name="merchant_key" type="hidden" value="' + merchantKey + '" />';

    var paypalAddFormHtml = '<!-- Specify a Buy Now button. -->' +
        '<!-- Specify details about the item that buyers will purchase. -->' +
        '<input name="name_first" value="' + payFastUsername + '"  type="hidden"/>' +
        '<input name="name_last"  type="hidden" placeholder="Last Name" />' +
        '<input name="email_address" value="' + payFastEmail + '" type="hidden"/>' +
        '<input name="m_payment_id" type="hidden" value="8542"/>' +
        '<input name="amount" type="hidden" value="' + amount + '"/>' +
        '<input name="item_name" type="hidden"value="' + payFastproductName + '"/>' +
        '<input name="item_description" type="hidden" value="' + payFastproductDescrip + '"/>' +
        '<input type="hidden" name="custom" value="' + requestId + '">';

    var PaypalUrlFormHtml = '<!-- URL --><input type="hidden" name="return_url" value="' + successUrl + '" /><input name="cancel_url" type="hidden" value="' + cancelUrl + '" /><input type="hidden" name="notify_url" value="' + notifyUrl + '" /><!-- Display the payment button. --><input type="image" src="{URL}/images/subscribe_btn.png" name="submit" id="submit" alt="PayFast - The safer, easier way to pay online!"><img alt="" border="0" src="' + url_prefix + 'paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1"></form><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script><script>function ClickButtonPayFast(){$(\'#submit\').trigger(\'click\');}</script></body></html>';
    console.log("paypalAddFormHtml      " + PaypalUrlFormHtml);
    return (paypalIdHtml + paypalAddFormHtml + PaypalUrlFormHtml);
}

Appyscript.validateCardType = function(cardNo) {

    if (/^5[1-5]/.test(cardNo)) {
        return "mastercard";
    }
    if (/^4/.test(cardNo)) {
        return "visa";
    } else if (/^3[47]/.test(cardNo)) {
        return "american";
    } else if (/^(5018|5020|5038|6304|6759|676[1-3])/.test(cardNo)) {
        return "maestro";
    } else if (/^(6011|622(12[6-9]|1[3-9][0-9]|[2-8][0-9]{2}|9[0-1][0-9]|92[0-5]|64[4-9])|65)/.test(cardNo)) {
        return "discover";
    } else if (/^30[0-5]/.test(cardNo)) {
        return "dinnerclub";
    } else {
        return "";
    }
}


Appyscript.numberlength = function() {
    if (this.value.length > this.maxLength)
        this.value = this.value.slice(0, this.maxLength);
}

Appyscript.numberValidation = function() {
    function isNumeric(evt) {
        var theEvent = evt || window.event;
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
        var regex = /[0-9.+]|\-/;
        if (!regex.test(key)) {
            theEvent.returnValue = false;
            if (theEvent.preventDefault) theEvent.preventDefault();
        }
    }
    return isNumeric(event);
}

Appyscript.onlyNumberValidation = function() {
    function isOnlyNumeric(evt) {
        var theEvent = evt || window.event;
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
        var regex = /[0-9]/;
        if (!regex.test(key)) {
            theEvent.returnValue = false;
            if (theEvent.preventDefault) theEvent.preventDefault();
        }
    }
    return isOnlyNumeric(event);
}

Appyscript.keyValidation = function() {
    function isKey(evt) {
        var theEvent = evt || window.event;
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
        var regex = /[0-9a-zA-Z]/;
        if (!regex.test(key)) {
            theEvent.returnValue = false;
            if (theEvent.preventDefault) theEvent.preventDefault();
        }
    }
    return isKey(event);
}

Appyscript.checkNameState = function(str) {
    var regex = /^([a-zA-Z ]+)$/;
    return regex.test(str);
}

$$(document).on('input', '.numberlength', Appyscript.numberlength);
$$(document).on('keypress', '.numberValidation', Appyscript.numberValidation);
$$(document).on('keypress', '.onlyNumberValidation', Appyscript.onlyNumberValidation);
$$(document).on('keypress', '.specialKey', Appyscript.keyValidation);


Appyscript.clickHome = function() {
    Appyscript.popupClose()
    setTimeout(function() {
        if (folderPage) {
            mainView.router.back();
            return false;
        }
        if (AppyTemplate.global.style.layout == "slidemenu") {
            if (AppyTemplate.global.style.autoLoadFirstPage == "YES") {
                var strList = "news|services|socialnetwork|ecommerce|foodordering|dating|hyperlocal|foodcourt|messenger|accommodation|fitness";
                if ((strList.indexOf(pageId) == -1) && !globalPage) {
                    var thisClick = $$(".app_navigation_slidemenu a").eq(0);
                    pageId = thisClick.data('productid');
                    pageIdentifie = thisClick.data('productIdentifier');
                    Appyscript.pageData(pageId, pageIdentifie);
                } else {
                    var thisClick = $$(".app_navigation_slidemenu a").eq(0);
                    if ((strList.indexOf(thisClick.data('productid')) == -1) && !globalPage) {
                        autoFirstPage = true;
                    } else {
                        autoFirstPage = false;
                    }
                    Appyscript.openSlide();
                    /*pageId = "mainPage";
                    Appyscript.layoutPage('layout/slidemenu.html',{context: {title: data.appData.headerBarTitle, home:data}});
                    $$('#layoutCSS').attr('href','css/slidemenu.css');
                    Appyscript.params.swipePanelActiveArea=0;*/
                }
            } else {
                Appyscript.openSlide();
            }
        } else if (AppyTemplate.global.style.layout == "slidemenu3d") {
            if (AppyTemplate.global.style.autoLoadFirstPage == "YES") {
                var strList = "news|services|socialnetwork|ecommerce|foodordering|dating|hyperlocal|foodcourt|messenger|accommodation|fitness";
                if ((strList.indexOf(pageId) == -1) && !globalPage) {
                    var thisClick = $$(".app_navigation_slidemenu3d a").eq(0);
                    pageId = thisClick.data('productid');
                    pageIdentifie = thisClick.data('productIdentifier');
                    Appyscript.pageData(pageId, pageIdentifie);
                } else {
                    var thisClick = $$(".app_navigation_slidemenu3d a").eq(0);
                    if ((strList.indexOf(thisClick.data('productid')) == -1) && !globalPage) {
                        autoFirstPage = true;
                    } else {
                        autoFirstPage = false;
                    }
                    Appyscript.openSlide();
                    /*pageId = "mainPage";
                    Appyscript.layoutPage('layout/slidemenu.html',{context: {title: data.appData.headerBarTitle, home:data}});
                    $$('#layoutCSS').attr('href','css/slidemenu.css');
                    Appyscript.params.swipePanelActiveArea=0;*/
                }
            } else {
                Appyscript.openSlide();
            }
        } else if (AppyTemplate.global.style.layout == "bottom") {
            if (AppyTemplate.global.style.autoLoadFirstPage == "YES") {
                var strList = "news|services|socialnetwork|ecommerce|foodordering|dating|hyperlocal|foodcourt|messenger|accommodation|fitness";
                if ((strList.indexOf(pageId) == -1) && !globalPage) {
                    var thisClick = $$(".toolbar .app_navigation_bottom a").eq(0);
                    pageId = thisClick.data('productid');
                    pageIdentifie = thisClick.data('productIdentifier');
                    Appyscript.pageData(pageId, pageIdentifie);
                } else {
                    var thisClick = $$(".toolbar .app_navigation_bottom a").eq(0);
                    if ((strList.indexOf(thisClick.data('productid')) == -1) && !globalPage) {
                        autoFirstPage = true;
                    } else {
                        globalPage = false;
                        autoFirstPage = false;
                    }
                    pageId = "mainPage";
                    Appyscript.layoutPage('layout/bottom.html', {
                        context: {
                            title: data.appData.headerBarTitle,
                            home: data
                        }
                    });
                    $$('#layoutCSS').attr('href', 'css/bottom.css');
                }
            } else {
                globalPage = false;
                pageId = "mainPage";
                Appyscript.layoutPage('layout/bottom.html', {
                    context: {
                        title: data.appData.headerBarTitle,
                        home: data
                    }
                });
                $$('#layoutCSS').attr('href', 'css/bottom.css');
            }
        } else {
            mainView.router.back();
        }
    }, 100)
}




Appyscript.openSlide = function() {
    navigationAnimationSlide();
    if (data.appData.lang == 'sa') {
        Appyscript.openPanel('right');
    } else {
        Appyscript.openPanel('left');

    }
}



AppyTemplate.registerHelper('validString', function(value) {
    if (value) {
        console.log(value);
        value = value.replace(/<br\s*\/?>/mg, "");
        return value;
    } else {
        return "";
    }
    return "";
});


//for check compare two string
AppyTemplate.registerHelper('ifCond', function(v1, v2, options) {
    if (v1 === v2) {
        return options.fn(this);
    }
    return options.inverse(this);
});


function b64toBlob(b64Data, contentType, sliceSize) {
    contentType = contentType || '';
    sliceSize = sliceSize || 512;

    var byteCharacters = atob(b64Data);
    var byteArrays = [];

    for (var offset = 0; offset < byteCharacters.length; offset += sliceSize) {
        var slice = byteCharacters.slice(offset, offset + sliceSize);

        var byteNumbers = new Array(slice.length);
        for (var i = 0; i < slice.length; i++) {
            byteNumbers[i] = slice.charCodeAt(i);
        }

        var byteArray = new Uint8Array(byteNumbers);

        byteArrays.push(byteArray);
    }

    var blob = new Blob(byteArrays, {
        type: contentType
    });
    console.log("blob blob::" + JSON.stringify(blob));
    return blob;
}


function getRandomNumber() {
    return Math.floor(Math.random() * 100000000000);
}

function multiSelectChange() {
    var thisSelect = $$(this);
    var thisInput = thisSelect.parent().find("input");
    var value = [];
    var text = [];
    thisSelect.find("option").each(function() {
        if (this.selected) {
            value.push($$(this).attr("value"));
            text.push($$(this).text());
        }
    })
    thisInput.attr("data-value", value.join(",")).val(text.join(","));
}

Appyscript.onPageInit('paymentPage', function(page) {
    setTimeout(function() {
        if (checkLayout()) {
            var strList = "news|services|socialnetwork|ecommerce|foodordering|dating|hyperlocal|foodcourt";
            if (strList.indexOf(pageId) != -1) {
                $$(".toolbar").addClass("toolbar-hidden");
                $$(mainView.pagesContainer).addClass("no-toolbar").removeClass("toolbar-through");
                if ($$(mainView.pagesContainer).hasClass('bottom_height')) {
                    $$(mainView.pagesContainer).removeClass("bottom_height");
                }
            }
        }
    }, 600);
})
var currenyCodeArray = ["JPY", "CNY", "SDG", "RON", "MKD", "MXN", "CAD",
    "ZAR", "AUD", "NOK", "ILS", "ISK", "SYP", "LYD", "UYU", "YER", "CSD",
    "EEK", "THB", "IDR", "LBP", "AED", "BOB", "QAR", "BHD", "HNL", "HRK",
    "COP", "ALL", "DKK", "MYR", "SEK", "RSD", "BGN", "DOP", "KRW", "LVL",
    "VEF", "CZK", "TND", "KWD", "VND", "JOD", "NZD", "PAB", "CLP", "PEN",
    "GBP", "DZD", "CHF", "RUB", "UAH", "ARS", "SAR", "EGP", "INR", "PYG",
    "TWD", "TRY", "BAM", "OMR", "SGD", "MAD", "BYR", "NIO", "HKD", "LTL",
    "SKK", "GTQ", "BRL", "EUR", "HUF", "IQD", "CRC", "PHP", "SVC", "LKR", "PLN",
    "TMT",
];
AppyTemplate.registerHelper('currenyCodeArrayHelper', function(abc) {

    var currencyArray = currenyCodeArray.reverse();
    htmlString = "";
    for (var i = 0; i < currencyArray.length; i++) {
        htmlString = htmlString + "<option value=" + currencyArray[i] + "  label=" + currencyArray[i] + ">" + currencyArray[i] + "  </option>"
    }
    return htmlString;
});

/*Manoj Kumar for hardware back button in bottom layout*/
$$(document).on('click', '.backWebsite', function() {

    Appyscript.hideWebViewFragment();
    isOpenFragmentWithBottom = false;


});

$$(document).on('click', '.fragmentPage', function() {

    if (isOpenFragmentWithBottom) {
        Appyscript.showWebViewFragment();
    }



});


AppyTemplate.registerPartial('slideBackground', '<style id="slideBackground">{{#root_Compare @global.style.backgroundType "==" "custom_image"}}' +
    '@media screen and (orientation:portrait) { body.slidemenu {background-image:url({{@global.style.appBackground[0]}}) }}' +
    '@media screen and (orientation:landscape) { body.slidemenu {background-image:url({{@global.style.appIpadBackground[0]}}) }}' +
    '{{else}}' +
    'body.slidemenu {' +
    '{{#root_Compare @global.style.backgroundType "==" "custom_color"}}' +
    'background-color:{{@global.style.appBackground[0]}}' +
    '{{/root_Compare}}' +
    '{{#root_Compare @global.style.backgroundType "==" "library_image"}}' +
    'background-image:url({{@global.style.appBackground[0]}})' +
    '{{/root_Compare}} }' +
    '{{/root_Compare}}</style>');


AppyTemplate.registerHelper('getNavigation', function(layout, menu) {
    //console.log(layout, menu);
    var htmlString = "";
    var backIcon = "icon-left-open-2";
    var menuIcon = "appyicon-sort-down";
    var iconColor = AppyTemplate.global.style.headerBarIconColor;

    if (('slidemenu|slidemenu3d').indexOf(layout) != -1) {
        backIcon = "icon-menu";
        if (AppyTemplate.global.setting.homeButtonStatus) {
            menuIcon = "icon-angle-double-down";
        } else {
            menuIcon = "icon-menu";
        }
    } else {
        backIcon = "icon-left-open-2";
    }

    var clickArea = "";
    var clickHome = "Appyscript.clickHome()";
    if (pageId == "services") {
        clickArea = "Appyscript.openMenuPage('menu')";
    }
    if (pageId == "news") {
        clickArea = "Appyscript.popupPage('news-menu')";
    }
    if (pageId == "ecommerce") {
        clickArea = "Appyscript.popupPage('ecommerce-menu')"
    }
    if (pageId == "foodordering") {
        clickArea = "Appyscript.popupPage('foodordering-menu')";
    }
    if (pageId == "dating") {
        clickArea = "Appyscript.popupPage('dating-menu')";
        clickHome = "Appyscript.datingmainmenu()";

    }
    if (pageId == "hyperlocal") {
        clickArea = "Appyscript.openHyperLocalMenuPage('menu')";
    }
    if (pageId == "foodcourt") {
        clickArea = "Appyscript.popupPage('foodcourt-menu')";
    }
    if (pageId == "socialnetwork") {
        clickArea = "Appyscript.popupPage('socialnetwork-menu')";
    }
    if (pageId == "accommodation") {
        clickArea = "Appyscript.popupPage('accommodation-menu')";
        clickHome = "Appyscript.hotelhomescreen()";




    }

    if (globalPage) {
        if (pageData.pageId == "realestate") {
            clickArea = "Appyscript.openMenuPageEstate('menu')";
            if (pageData.list.length > 1) {
                backIcon = "icon-left-open-2";
                clickHome = "globalPage=false;mainView.router.back();";
            }
        }
        if (pageIdentifie.indexOf("event") != -1) {
            clickArea = "Appyscript.popupPage('customevent-menu')";
            customEventClass = "customEventTrue";
            if (pageData.list.length > 1) {
                backIcon = "icon-left-open-2";
                clickHome = "globalPage=false;mainView.router.back();";
            }
        }
    }


    if (folderPage) {
        backIcon = "icon-left-open-2";
    }




    if (AppyTemplate.global.setting.homeButtonStatus) {
        htmlString += '<a class="link back" style="color:' + iconColor + ';" onclick="' + clickHome + '"><i class="icon ' + backIcon + '"></i></a>';
        htmlString += '<a href="" class="link menu-down" style="color:' + iconColor + ';" onclick="' + clickArea + '"><i class="icon ' + menuIcon + '"></i></a>';
    } else {
        htmlString += '<a href="" class="link menu-down" style="color:' + iconColor + ';" onclick="' + clickArea + '"><i class="icon ' + menuIcon + '"></i></a>';
    }
    /*
	{{#if @global.setting.homeButtonStatus}}

        	{{#root_Compare @global.style.layout "==" "slidemenu"}}
	        <i class="icon icon-menu"></i>
            {{else}}
            {{#root_Compare @global.style.layout "==" "slidemenu3d"}}
            <i class="icon icon-menu"></i>
            {{else}}

            {{/root_Compare}}
            {{/root_Compare}}
        </a>
        {{/if}}

		 <a href="" class="link menu-down" style="color:{{@global.style.headerBarIconColor}};" onclick="Appyscript.openMenuPage('menu')">
        	{{#root_Compare @global.style.layout "==" "slidemenu"}}
            {{#if @global.setting.homeButtonStatus}}
            <i class="icon icon-angle-double-down"></i>
            {{else}}
            <i class="icon icon-menu"></i>
            {{/if}}
            {{else}}
            {{#root_Compare @global.style.layout "==" "slidemenu3d"}}
            {{#if @global.setting.homeButtonStatus}}
            <i class="icon icon-angle-double-down"></i>
            {{else}}
            <i class="icon icon-menu"></i>
            {{/if}}
            {{else}}
            <i class="icon appyicon-sort-down"></i>
            {{/root_Compare}}
            {{/root_Compare}}
        </a>

	*/
    return htmlString;
})


AppyTemplate.registerHelper('getSlideBack', function(mode) {
    var iconColor = AppyTemplate.global.style.headerBarIconColor;
    var backClass = "";
    if (mode == "common") {
        if (!AppyTemplate.global.innerLayout) {
            backClass = "bottomBack";
        }
    } else {
         if (!folderPage) {
            backClass = "bottomBack";
        }
    }

    if (pageId == "services" || pageId == "realestate" || pageId == "hyperlocal" || pageId == "coupon") {
        if (AppyTemplate.global.dirMode) {
            backClass += " dirBack";
        }
    }



    var htmlString = '<a href="index" class="link back ' + backClass + '" style="color:' + iconColor + ';"><i class="icon icon-left-open-2"></i></a>';

    if (pageId == "coupon") {

       htmlString = '<a href="index"  onclick="goBackfromcouponPage()" class="link back ' + backClass + '" style="color:' + iconColor + ';"><i class="icon icon-left-open-2"></i></a>';

        }
    if (AppyTemplate.global.style.layout == 'slidemenu' || AppyTemplate.global.style.layout == 'slidemenu3d') {
        htmlString = '<a onclick="Appyscript.openSlide()" style="color:' + iconColor + ';"><i class="icon icon-menu"></i></a>';
    }
    return htmlString;
})


AppyTemplate.registerHelper('getSlideRightBack', function(mode) {
    var iconColor = AppyTemplate.global.style.headerBarIconColor;

    var layoutList = "slidemenu|slidemenu3d";
    var layout = AppyTemplate.global.style.layout;
    var htmlString = "";
    if ((folderPage && layoutList.indexOf(layout) != -1)) {
        htmlString = '<a href="index" class="link back" style="color:' + iconColor + ';"><i class="icon icon-left-open-2"></i></a>';
    }
    if (AppyTemplate.global.innerLayout) {
        htmlString = '<a href="index" class="link back" style="color:' + iconColor + ';"><i class="icon icon-left-open-2"></i></a>';
    }
    return htmlString;
})



function checkLayout() {
    var layoutList = "bottom|slidemenu|slidemenu3d";
    var layout = AppyTemplate.global.style.layout;
    if (layoutList.indexOf(layout) == -1) {
        return false;
    } else {
        return true;
    }
}

$$(document).on('input', '.autoScroll', textAutoScroll);
$$(document).on('keypress', '.autoScroll', textAutoScroll);

function textAutoScroll() {
    var scrollRang = 0;
    if ($$(this).attr("scroll-rang")) {
        scrollRang = parseInt($$(this).attr("scroll-rang"));
    }
    var activePage = $$(mainView.activePage.container).find(".page-content")[0];
    activePage.scrollTop = this.offsetTop - $$(this).height() - scrollRang;
}

Appyscript.slidelogOut = function() {
    if (AppyTemplate.global.style.layout == "slidemenu" || AppyTemplate.global.style.layout == "slidemenu3d") {
        var strList = "news|services|socialnetwork|ecommerce|foodordering|dating|hyperlocal|foodcourt|messenger|accommodation|fitness";
        if (data.login.autoLogin == "true") {
            if ((strList.indexOf(pageId) == -1) && !globalPage) {} else {
                pageId = "mainPage";
                Appyscript.layoutPage('layout/' + AppyTemplate.global.style.layout + '.html', {
                    context: {
                        title: data.appData.headerBarTitle,
                        home: data
                    }
                });
                $$('#layoutCSS').attr('href', 'css/' + AppyTemplate.global.style.layout + '.css');
                //Appyscript.params.swipePanelActiveArea=0;
            }
        } else {
            if (pageData.autoLogin == "YES") {
                if ((strList.indexOf(pageId) == -1) && !globalPage) {} else {
                    pageId = "mainPage";
                    Appyscript.layoutPage('layout/' + AppyTemplate.global.style.layout + '.html', {
                        context: {
                            title: data.appData.headerBarTitle,
                            home: data
                        }
                    });
                    $$('#layoutCSS').attr('href', 'css/' + AppyTemplate.global.style.layout + '.css');
                    //Appyscript.params.swipePanelActiveArea=0;
                }
            } else {}
        }
    }
}


function languageCodeProtocol()
{

  var languageCodeArray = '{"fr":"fr","pt":"pt","sa":"ar","es":"es","de":"de","cn":"zh-hans","nl":"de","jp":"ja","it":"it","ru":"el"}';
  var lanCode=data.appData.lang;

  var jsoObj = JSON.parse(languageCodeArray);

  var protocol=jsoObj[lanCode];

 if(typeof protocol === "undefined")
 {
   return "www";
 }
 else
 {
   return protocol;
 }

}

//radical : this function formats price with commas x : string
function formatPriceGlobal(x){
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}