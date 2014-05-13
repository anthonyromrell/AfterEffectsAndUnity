using UnityEngine;
using System.Collections;

public class EnemyFiringStateMachine : MonoBehaviour {
	
	public Animator enemyAnim;//instance of an Animator component
	
	void OnTriggerEnter(Collider _c) {//runs when colliding with a trigger component of a game object
		if (_c.gameObject.tag == "Player") { //Game objects can have custom tags that can be tested for as strings
			ChangeState("Armed", true); //Custom function changes the animators state
			//ChangeState("Disarm", false); //Custom function changes the animators state
		} 
	}
	
	void OnTriggerStay (Collider _c) {
		if (_c.gameObject.tag == "Player") { 
			ChangeState("Armed", true); 
			ChangeState("Fire", true); 
		}
	} 
	
	void OnTriggerExit(Collider _c) {
		if (_c.gameObject.tag == "Player") { 
			ChangeState("Armed", false);
			ChangeState("Fire", false);
		} 
	}
	
	public void ChangeState (string _a, bool _b) {
		enemyAnim.SetBool(_a,_b); //changes the animators state
	}
}
