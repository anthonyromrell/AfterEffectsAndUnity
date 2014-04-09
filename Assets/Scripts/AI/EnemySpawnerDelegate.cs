using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemySpawnerDelegate : MonoBehaviour {

	public int randomSpawningTime = 10;
	public delegate Vector3 ActivateEnemy (Vector3 _v);
	public static event ActivateEnemy ActivateEnemyEvent;
	//public event ActivateEnemy ActivateEnemyEvent;

	private float activationTime = 0.0F;
	public float nextActivate = 2.0F;
	
	void Update() {
		OnActivateEnemy();
	}

	public void OnActivateEnemy () {
		if(Time.time > activationTime) {
			if( ActivateEnemyEvent != null ) {
				ActivateEnemyEvent(this.transform.position);
			}
			activationTime = Time.time + nextActivate+(Random.Range(0,randomSpawningTime));
		}
	}	
}
