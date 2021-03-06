macroScript QuickMaterialmc
	category:"StrombergTools"
	toolTip:""
(
rollout qmsRollout "QuickMaterial" width:239 height:46
(
	button GreenB "Green" pos:[70,9] width:42 height:24
	button BlueB "Blue" pos:[125,9] width:42 height:24
	button RandomB "Random" pos:[180,9] width:47 height:24
	button RedB "Red" pos:[15,9] width:42 height:24
	
	on RedB pressed do
	(
		for i = 1 to selection.count do
			(
			redC = color 255 0 0
			newmat = StandardMaterial Diffuse:(redC)
			newmat.name = ("MAT_" + i as string)
			selection[i].material = newmat
			)
	)
	on GreenB pressed do
	(
		for i = 1 to selection.count do
			(
			greenC = color 0 255 0
			newmat = StandardMaterial Diffuse:(greenC)
			newmat.name = ("MAT_" + i as string)
			selection[i].material = newmat
			)
	)
	on BlueB pressed do
	(
		for i = 1 to selection.count do
			(
			blueC = color 0 0 255
			newmat = StandardMaterial Diffuse:(blueC)
			newmat.name = ("MAT_" + i as string)
			selection[i].material = newmat
			)
	)
	on RandomB pressed do
	(
		-- Had to put random under here, or else I would make the color when starting the script and only once.
		randomC = color (random 0 255) (random 0 255) (random 0 255)
		for i = 1 to selection.count do
			(
			newmat = StandardMaterial Diffuse:(randomC)
			newmat.name = ("MAT_" + i as string)
			selection[i].material = newmat
			)
	)
)
createdialog qmsRollout
) 