[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="detail">
    <div class="vizitka">
        <div class="jmeno">${vizitkaDetail.jmeno}</div>
        <div class="firma">${vizitkaDetail.firma}</div>
        <div class="udaje">
            <div class="adresa">
                <div>${vizitkaDetail.ulice}</div>
                <div>${vizitkaDetail.obecPSC}</div>
            </div>
            <div class="kontakty">
                <div>[#if vizitkaDetail.email?exists]
                        <i class="las la-at"></i><span>${vizitkaDetail.email}</span>
                    [/#if]
                </div>
                <div> [#if vizitkaDetail.telefon?exists]
                        <i class="las la-phone-alt"></i><span>${vizitkaDetail.telefon}</span>
                    [/#if]
                </div>
                <div>[#if vizitkaDetail.web?exists]
                        <i class="las la-globe"></i><span>${vizitkaDetail.web}</span>
                    [/#if]
                </div>
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${vizitkaDetail.celaAdresa?url}" width="100%" height="100%" frameborder="0"></iframe>
    </div>

</div>
</body>
</html>
