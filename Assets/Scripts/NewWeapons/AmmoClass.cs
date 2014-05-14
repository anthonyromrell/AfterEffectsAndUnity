using UnityEngine;
using System.Collections;
using System;

public class AmmoClass : MonoBehaviour {

	public static Action<AmmoClass> AddAmmoToList;

	public Animator ammoAnim;
	public WeaponType.weaponSelection thisWeaponSelection;
	//public float ammoSpeed = 2; 

	void Start () {
		if(AddAmmoToList != null)
			AddAmmoToList(this);
	}
	
	public void OnActivateAmmo (Vector3 _fireLocation, Vector3 _fireDirection, float _rotationAngle, int _ammoSpeed) {
		transform.localEulerAngles = new Vector3(0,_rotationAngle,0);
		rigidbody.velocity = Vector3.zero;//stops all motion of a rigid body
		transform.position = _fireLocation;//resets the ammo gameobjects position
		ammoAnim.SetBool("Restart", true);//sets the animators restart custom perameter
		gameObject.SetActive(true);
		rigidbody.AddRelativeForce(_fireDirection*_ammoSpeed, ForceMode.Impulse);//adds force to the ammos rigidBody
	}	
}
