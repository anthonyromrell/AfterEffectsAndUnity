using UnityEngine;
using System.Collections;

public class AmmoControl : MonoBehaviour {
	
	public Rigidbody ammoRigid;//Component Type
	public Animator ammoAnim;//Component Type
	public GameObject ammoGO;//Component Type
	public GameObject AmmoArt;
	
	void OnCollisionEnter () {//When contacts with another object with a collider component
		ammoAnim.SetBool("Impact", true);//Sets a boolean parameter in the Animator component
		ammoRigid.velocity = Vector3.zero;//stops the rigidbody component from moving
	}
}
