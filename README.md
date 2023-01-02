<h1> My first Bash Script </h1>

This is a simple bash scrip that can be used for subdomain hunting.<br>
It uses tools wriiten in GOLang and Python.<br>
First a GO utility <strong>assetfinder</strong> is used to find the subdomains.<br>
Another tool called  <strong>amass </strong> can also be used. (It is slower than assetfinder).<br>
Then alive domains are filtered using another GO uitlity <strong>httprobe</strong>.<br>
Finally screenshot of these alive domains are taken using a python utility called <strong>shot-scraper</strong>.
