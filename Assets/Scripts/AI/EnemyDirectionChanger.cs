using UnityEngine;
using System.Collections;

public class EnemyDirectionChanger : MonoBehaviour {

	public Transform EnemyArtControl;//this should be the gameObject that can rotate the art asset

	void OnTriggerEnter ( ) {
		EnemyArtControl.Rotate(0,180,0);//rotates the AI 180 in Y to "chase" the Player
	}
}
