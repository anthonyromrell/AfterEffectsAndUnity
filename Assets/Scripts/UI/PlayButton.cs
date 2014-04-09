using UnityEngine;
using System.Collections;

public class PlayButton : MonoBehaviour {
	
	public Object Level;
	
	void OnMouseDown () {
		Application.LoadLevel(Level.name);	
	}
	
}
