using UnityEngine;
using System.Collections;
using System;

public class FlappyEndGame : MonoBehaviour
{
	public static Action TurnOffGame;
	public static Action<string> PlayZap;
	public static Action TurnOffGasCanSound;
	
	void OnTriggerEnter2D (Collider2D _c)
	{    
		
		if(TurnOffGame != null)
			TurnOffGame();
		
		if(PlayZap != null)
			PlayZap(this.gameObject.tag);
		
		if(TurnOffGasCanSound != null)
			TurnOffGasCanSound();
		
	}
}