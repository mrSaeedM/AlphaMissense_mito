import pandas as pd
#Read a large tsv File

column_names = ["uniprot_id", "protein_variant", "am_pathogenicity", "am_class"]

data =  pd.read_csv('AlphaMissense_mito_genes.tsv', sep='\t', encoding='utf-8', skiprows=1, names=column_names)
#data =  pd.read_csv('reduced_input.tsv', sep='\t', encoding='utf-8', skiprows=4, names=column_names)

# print first few rows  
print(data.uniprot_id.unique())

'''
P00395 - Protein Cytochrome c oxidase subunit 1 Gene MT-CO1 , Amino acids 513
P00403 - Protein Cytochrome c oxidase subunit 2 Gene MT-CO2 , Amino acids 227
P00414 - Protein Cytochrome c oxidase subunit 3 Gene MT-CO3 , Amino acids 261
P00846 - Protein ATP synthase subunit a Gene MT-ATP6 , Amino acids 226
P03928 - Protein ATP synthase protein 8 Gene MT-ATP8 , Amino acids 68
P03886 - Protein NADH-ubiquinone oxidoreductase chain 1 Gene MT-ND1 , Amino acids 318
P03891 - Protein NADH-ubiquinone oxidoreductase chain 2 Gene MT-ND2 , Amino acids 347
P03897 - Protein NADH-ubiquinone oxidoreductase chain 3 Gene MT-ND3 , Amino acids 115
P03905 - Protein NADH-ubiquinone oxidoreductase chain 4 Gene MT-ND4 , Amino acids 459
P03915 - Protein NADH-ubiquinone oxidoreductase chain 5 Gene MT-ND5 , Amino acids 603
P03923 - Protein NADH-ubiquinone oxidoreductase chain 6 Gene MT-ND6 , Amino acids 174
P03901 - Protein NADH-ubiquinone oxidoreductase chain 4L Gene MT-ND4L , Amino acids 98
'''
