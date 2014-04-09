using UnityEngine;
using System.Collections;

public class MoveButtonOpposite : MoveButton {

	public override void RotateChar () {
		if(!myChar.direction) {//holds direction
			myChar.direction = true; //change character direction
			myChar.characterArtController.Rotate(0,180,0);//it rotates in z
			myFCW.direction = Vector3.left;//changes the direction of the ammo before firing;
			myFCW.rotationAngle = 180;
		}
	}

	public override void OnKeyEnter () {//custom function
		if(Input.GetKey(KeyCode.LeftArrow)) {
			OnMouseDown();
		}

		if(Input.GetKeyUp(KeyCode.LeftArrow)) {
			OnMouseUp();
		}
	}
}
