# Удаляем старые правила перед импортом
/ip dns static remove [find where comment~"VIA-RU"]

# Добавляем новые правила
# Каждый домен автоматически резолвится и IP попадает в address-list=via-ru
# address-list=via-ru → маршрут через WG-RU (mangle rule 0)

/ip dns static
add type=FWD forward-to=8.8.8.8 regexp=".*youtube\\.com" address-list=via-ru comment="VIA-RU"
add type=FWD forward-to=8.8.8.8 regexp=".*googlevideo\\.com" address-list=via-ru comment="VIA-RU"
add type=FWD forward-to=8.8.8.8 regexp=".*instagram\\.com" address-list=via-ru comment="VIA-RU"
add type=FWD forward-to=8.8.8.8 regexp=".*twitter\\.com" address-list=via-ru comment="VIA-RU"
add type=FWD forward-to=8.8.8.8 regexp=".*spotify\\.com" address-list=via-ru comment="VIA-RU"