using UnityEngine;
using System.Collections;

public class EnemyInstancer : MonoBehaviour {

	public GameObject EnemyInstance;
	private float activationTime = 0.0F;
	public float nextActivate = 2.0F;
	
	void Update() {
		OnActivateEnemy();
	}
	
	public void OnActivateEnemy () {
		if(Time.time > activationTime) {
			Instantiate(EnemyInstance);
			activationTime = Time.time + nextActivate;
		}
	}	
}
