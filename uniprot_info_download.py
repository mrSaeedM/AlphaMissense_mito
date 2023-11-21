import requests
#url = 'https://www.uniprot.org/uniprotkb?query=(reviewed:true)%20AND%20(organism_id:9606)'
url  = 'https://www.uniprot.org/uniprotkb/P03928/entry'
all_fastas = requests.get(url)
print(all_fastas.Gene)
