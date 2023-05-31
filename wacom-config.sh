#!/bin/bash

STYLUS='Wacom Intuos BT S Pen stylus'
PAD='Wacom Intuos BT S Pad pad'

#---------------------------------------------------
#Config de l'écran (écran 4K sans offset)
#(Faire xrandr pour connaitre cette valeur pour chaque écran)

xsetwacom --set 'Wacom Intuos BT S Pen stylus' maptooutput 3840x2160+0+0
#xsetwacom --set 'Wacom Intuos BT S Pen stylus' maptooutput 1920x1080+0+0
echo "Output mapped on left screen"


#---------------------------------------------------
#Config pour les raccourcis de Xournal++ et Krita

# ---- Stylet ----

#Bouton avant stylet : Retour en mode crayon
xsetwacom set 'Wacom Intuos BT S Pen stylus' Button 2 "key +ctrl shift p -ctrl"
echo "Return to pen mode OK"
#Bouton arrière stylet : Selection rectangulaire
xsetwacom set 'Wacom Intuos BT S Pen stylus' Button 3 "key +ctrl shift R -ctrl"
echo "Rectangular selection OK"
# ---- Tablette ----

#Bouton 1 : Active / Désactive le mode trait droit
xsetwacom set 'Wacom Intuos BT S Pad pad' Button 1 "key +ctrl shift 6 -ctrl"
echo "Button 1 : Line mode OK"
#Bouton 2 : Zoom out
xsetwacom set 'Wacom Intuos BT S Pad pad' Button 2 "key +ctrl 6 -ctrl"
echo "Button 2 : Zoom out OK"
#Bouton 3 : Zoom in
xsetwacom set 'Wacom Intuos BT S Pad pad' Button 3 "key +ctrl shift = -ctrl"
echo "Button 3 : Zoom in OK"
#Bouton 4 (reconnu comme 8): Undo
xsetwacom set 'Wacom Intuos BT S Pad pad' Button 8 "key +ctrl z -ctrl"
echo "Button 4 : Ctrl+Z OK"

#---------------------------------------------------
