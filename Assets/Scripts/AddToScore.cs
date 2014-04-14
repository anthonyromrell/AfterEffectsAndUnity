using UnityEngine;
using System.Collections;

public class AddToScore : MonoBehaviour {

	public UILabel myLabel;
	private int score = 0;

	public UISlider mySlider;
	private float myHealth = 1.0f;

	void OnClick () {
		score++;
		if(myHealth > 0) 
			myHealth -= 0.01f;
		mySlider.value = myHealth;
		myLabel.text = score.ToString();
	}
}
