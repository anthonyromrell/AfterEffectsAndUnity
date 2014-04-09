using UnityEngine;
using System.Collections;

public class FireOnAnimEvent : MonoBehaviour {

	public ParticleSystem enemyParticles;
	//public int ammoCount = 10;

	public void FireAmmo () {
		//if(ammoCount >= 0 ) {
	//	ammoCount--;
		enemyParticles.Emit(1);//call to particle system
		//}
	}
}
