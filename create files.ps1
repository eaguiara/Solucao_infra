Get-FileHash -Algorithm SHA256 'C:\Users\eange\OneDrive\Documentos\hash\teste_hash\TESTE.txt' |out-file -encoding UTF8 -Width 200 -File C:\Users\eange\OneDrive\Documentos\hash\temp_hash\RESUL10.txt
Get-Content C:\Users\eange\OneDrive\Documentos\hash\temp_hash\RESUL10.txt | Select -Index 3 > C:\Users\eange\OneDrive\Documentos\hash\temp_hash\RESUL20.txt
Get-Content C:\Users\eange\OneDrive\Documentos\hash\temp_hash\RESUL20.txt | out-file -encoding UTF8 C:\Users\eange\OneDrive\Documentos\hash\original1.txt
