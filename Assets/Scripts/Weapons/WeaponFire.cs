using UnityEngine;
using System.Collections;

public class WeaponFire : MonoBehaviour {

	//Add this script to a fireButton

	public Animator myAnim;
	public ParticleSystem WeaponParticles;

	void OnMouseDown () {
		myAnim.SetBool("FireBool", true);
	}

	void OnMouseUp () {
		myAnim.SetBool("FireBool", false);
	}
}