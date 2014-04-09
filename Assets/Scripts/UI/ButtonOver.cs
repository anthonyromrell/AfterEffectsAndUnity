using UnityEngine;
using System.Collections;

public class ButtonOver : MonoBehaviour {

	public SpriteRenderer mySPR;

	void OnMouseOver ( ) {
		mySPR.color = Color.red;
	}

	void OnMouseExit ( ) {
		mySPR.color = Color.white;
	}
}
