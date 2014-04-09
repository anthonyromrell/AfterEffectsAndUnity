using UnityEngine;
using System.Collections;

public class MoveButton : MonoBehaviour {

	public float myInput = 1;//is the direction the character will more set to either 1 or -1
	private float currentInput;//used to change the characters motion
	public Character myChar;//Character Script 
	public FireCurrentWeapon myFCW;//instance of the FireCurrentWeapon Class controlled by the this button to change ammo direction

	public void OnMouseDown () {
		currentInput = myInput;//passes the direction to a new varaible if to move
		MoveChar();//call to custom function to move the character
		RotateChar();//call to custom function to rotate the character
	}

	public void OnMouseUp () {
		currentInput = 0; //zero stops the character from moving
		MoveChar();//call to custom function to move the character
	}

	public virtual void RotateChar () {//custom function with the keyword virtual — this allows this function to be overridden in the "MoveButtonOposite" script
		if(myChar.direction) {//holds direction
			myChar.direction = false; //change character direction
			myChar.characterArtController.Rotate(0,180,0);//it rotates in z
			myFCW.direction = Vector3.right;//changes the direction of the ammo before firing;
			myFCW.rotationAngle = 0;
		}
	}
	
	void MoveChar () {//custom function
		myChar.moveDirection.x = currentInput;//moves the character either 1 -1 or 0 based on imput
		myChar.cAnim.SetFloat("MoveSpeed", currentInput);//sets the float of the Animation component
	}

	public virtual void OnKeyEnter () {//custom function
		if(Input.GetKeyDown(KeyCode.RightArrow)) {
			OnMouseDown();
		}
		if(Input.GetKeyUp(KeyCode.RightArrow)) {
			OnMouseUp();
		}
	}

	void Update () {
		OnKeyEnter();
	}
}
