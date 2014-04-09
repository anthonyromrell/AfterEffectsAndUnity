using UnityEngine;
using System.Collections;

public class FireCurrentWeapon : MonoBehaviour {

	//Add this script to a fireButton
	public Transform ammoStartingPoint; //the postion that the ammo fires from
	public WeaponsPickUpAndSwitch myWS;//instance of the weaponSwitch Class controlled by the this button
	private bool FiringIsActive = false;
	[HideInInspector]
	public Vector3 direction = Vector3.right;
	public float rotationAngle = 0;

	void OnMouseDown () {
		FiringIsActive = true;
	}

	void OnMouseUp () {
		FiringIsActive = false;
	}

	void Update () {
		if(FiringIsActive) {
			myWS.currentSpawner.OnActivateAmmo(ammoStartingPoint.position, direction, rotationAngle);
		}
		if(Input.GetKey(KeyCode.F)) {
			myWS.currentSpawner.OnActivateAmmo(ammoStartingPoint.position, direction, rotationAngle);
		}
	}
}