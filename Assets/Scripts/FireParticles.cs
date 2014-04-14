using UnityEngine;
using System.Collections;

public class FireParticles : MonoBehaviour {

	public ParticleSystem myParticles;

	void Start () {
		myParticles.Stop();
	}

	void OnMouseDown () {
		myParticles.Play();
	}

	void OnMouseUp () {
		myParticles.Stop();
	}

}
