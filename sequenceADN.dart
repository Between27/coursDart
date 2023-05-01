estADN(String chaine) {
  String l = chaine.toUpperCase();
  for (int i = 0; i < l.length; i++) {
    if (l[i] != 'A' && l[i] != 'C' && l[i] != 'G' && l[i] != 'T') return false;
  }
  return true;
}

transcrit(String chaine) {

  if (estADN(chaine)){
    List<String> tab = chaine.toUpperCase().split('');
    for (int i=0; i<tab.length;i++){
      if (tab[i] == 'T') tab[i] = 'U';
      }
    return tab.join();

    }
  }
baseComplementaire(String base){
  String chaine = base.toUpperCase();
if (estADN(base) && base.length == 1) {
  if (chaine == 'A') return 'T';
  else if (chaine == 'T') return 'A';
  else if (chaine == 'C') return 'G';
  else if (chaine == 'G') return 'C';
} else return '';
}


sequenceComplementaire(String chaine){
  List<String> tab = chaine.split(''); 
for (int i=0;i<tab.length;i++) {
  tab[i] = baseComplementaire(tab[i]);
}
return tab.reversed.join();

}

nombreOccurencesCodon(String codon, String seq){
 int occ = 0;
  for (int i=0;i<seq.length;i++){
    if (codon[0] == seq[i] && codon[1] == seq[i + 1] && codon[2] == seq[i + 2]) occ++;
  }
  return occ;
}


