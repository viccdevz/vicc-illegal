# vicc-illegal

* TR: Fivem için QBCore illegal script paketi, içinde "Esrar, Kokain, Afyon" bulunuyor.
* EN: QBCore illegal script package for Fivem, contains "Cannabis, Cocaine, Opium".&#x20;

## Video Showcase

* https://youtu.be/E9cA6FUV4v0

## Features

* Opium, Cannabis, Cocaine, Meth scripts.
* 0.00 - 0.01 Resmon
* Çok ayrıntılı ve kolay düzenlenebilir Config dosyası (Very detailed and easy editable Config file)

## Dependencies

* [qb-core](https://github.com/qbcore-framework/qb-core)
* [ps-ui](https://github.com/Project-Sloth/ps-ui) (optional)
* #### [ox\_lib](https://github.com/overextended/ox\_lib)&#x20;
* ###

### Installation

* Add the scripts items image to `qb-inventory(or lj-inventory)/html/images`
* \[images] Klasöründeki fotoğrafları `qb-inventory(or lj-inventory)/html/images` aktarın.
* Add the scripts items to `qb-core/shared/items`
* \[shared] items.lua'daki kodları `qb-core/shared/items` aktarın.

```
['esrar'] 				 = {['name'] = 'esrar', 			  	  	['label'] = 'Esrar', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'esrar.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Esrar'},
	['esrarislenmis'] 		 = {['name'] = 'esrarislenmis', 			['label'] = 'İşlenmiş Esrar', 	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'islenmisesrar.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'İşlenmiş Esrar'},
	['afyon'] 				 = {['name'] = 'afyon', 			  	  	['label'] = 'Afyon', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'afyon.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Afyon'},
	['afyonislenmis'] 		 = {['name'] = 'afyonislenmis', 			['label'] = 'İşlenmiş Afyon', 	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'islenmisafyon.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'İşlenmiş Afyon'},
	['kokain'] 				 = {['name'] = 'kokain', 			  	  	['label'] = 'Kokain', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'kokain.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Kokain'},
	['kokainislenmis'] 		 = {['name'] = 'kokainislenmis', 			['label'] = 'İşlenmiş Kokain', 	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'islenmiskokain.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'İşlenmiş Kokain'},
	['markedbills'] 				 = {['name'] = 'markedbills', 			  	  	['label'] = 'İzli Para', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'markedbills.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Money?'},

```

* Download the script and put it in the `[qb]` directory.
* Script dosyalarını indirin ve `[qb]` dizinine koyun.
