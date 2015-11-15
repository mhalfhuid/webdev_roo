# roo
Referentiele Onderhoudsomgeving

uitleg algemeen:
- Datamodel is afkomstig van bestaand datamodel, zie datamodel.pdf
- Van alle tabellen is er een bijbehorende view gemaakt die met elkaar verbonden zijn via links
- Blauwe lijnen geven de links weer, links zijn vice versa, dus een blauwe lijn van Format naar format_version wil
zeggen dat er een link is van format naar format_version en andersom.
- De rode lijnen uit datamodel.pptx zijn nog niet geimplementeerd

probleem:
Probleem is dat de format_item_links index view benaderd kan worden vanuit format_item of dim_item, de format_item_links
controller moet weten vanaf welke link de user afkomstig is.
Ik heb gebruik gemaakt van een globale variabele $userpath_var. Komt de user vanaf format_item, dan geldt $userpath_var ='form' (zie FormatItemsController). Komt de user vana dim_item dan geldt $userpath_var ='dim', (zie DimItemsController)

Dit lost het acute probleem op maar gebruik liever geen globale variabele. Wat is de Rails way of dealing with this???
