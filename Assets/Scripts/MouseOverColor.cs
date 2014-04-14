using UnityEngine;
using System.Collections;

public class MouseOverColor : MonoBehaviour {

	public SpriteRenderer mySpriteRenderer;
	public Color startColor;
	public Color overColor;
	public Color downColor;


	void Start () {
		mySpriteRenderer.color = startColor;
	}

	void OnMouseEnter () {
		mySpriteRenderer.color = overColor;
	}

	void OnMouseExit () {
		mySpriteRenderer.color = startColor;
	}

	void OnMouseDown () {
		mySpriteRenderer.color = downColor;
	}

	void OnMouseUp () {
		mySpriteRenderer.color = overColor;
	}
}
