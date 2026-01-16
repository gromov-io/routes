/ip dns static remove [find where comment~"VIA-LT"]

/ip dns static
add type=FWD forward-to=8.8.8.8 regexp=".*netflix\\.com" address-list=via-lt comment="VIA-LT"
add type=FWD forward-to=8.8.8.8 regexp=".*nflxvideo\\.net" address-list=via-lt comment="VIA-LT"