On a un simulateur. On connait x0, y0, vx, vy, xp(t), yp(t)
et donne en sortie la suite xp(t), 

L'estimateur dispose de xp(t), yp(t) et teta(t) et en déduit
une estimation de x0, y0, vx, vy


Deux approches :
	* l'approche globale : résolution d'un système d'équations (pivot de Gauss => utiliser une lib)
	* l'approche itérative : correction à chaque instant

Ensuite, on utilise ce qu'on a vu avec Monsieur Stromboni
pour faire en sorte que le "lemme" (Lunar Lander) se pose
doucement sur le mobile en mouvement.

Si on peut faire le lien avec l'animation, c'est excellent !

=============================
t = temps (indice dans le tableau des traces + 1) : coefficient de la vitesse
xp, yp : position de l'observateur
x0, y0 : position initiale du mobile
vx, vy : vitesse du mobile

sinTeta * x0 + t * sinTeta * vx - cosTeta * y0 - t * cosTeta * vy = xp * sinTeta - yp * cosTeta

Matrice C :
	t lignes (une ligne par intervalle de temps) ;
	4 colonnes :
		sinTeta
		t * sinTeta
		- cosTeta
		- t * cosTeta

Matrice X :
	1 colonne
	4 lignes :
		x0
		vx
		y0
		vy

Matrice Y :
	1 colonne
	t lignes (une ligne par intervalle de temps) :
		Chaque ligne : xp * sinTeta - yp * cosTeta

( Transposée(C) * C ) * X = Transposée(C) * Y
