using UnityEngine;
using System.Collections;

public class PowerUp : MonoBehaviour {

	public delegate void SendPower (float _sP);//Passes powerUp arguments to subscribers
	public static event SendPower SendHealthEvent;//runs if there is a subscriber and if called
	public static event SendPower SendAmmoEvent;//runs if there is a subscriber and if called
	[HideInInspector]
	public ParticleSystem myPS;
	public int emissionRate = 10;

	public enum PowerUpTypes {//game designer can choose the powerUp type
		AMMO,
		HEALTH,
		WEAPON,
		MONEY,
		TIME
	}

	public PowerUpTypes powerUpType;// the var that stores the enum
	public bool objectIsCollected; // boolean if this object can be in a collected state
	public float powerUpAmount = 0.1F; //the current value of the powerUp
	//[HideInInspector]//hides from Unity Editor
	public BoxCollider boxCollider; // the gameObject collider component
	//[HideInInspector]//hides from Unity Editor
	public Animator powerUpAnim;// the gameObject Animator component

	void Start () {
		myPS = this.GetComponent<ParticleSystem>();
		boxCollider = this.GetComponent<BoxCollider>();//Adds the component for the game designer
		powerUpAnim = this.GetComponent<Animator>();//Adds the component for the game designer
	}

	void OnBecameVisible () { // if visible in the camera
    	this.gameObject.SetActive(true); //turn of the script
	}

	public virtual void CasePowerUpType ()
	{
		switch (powerUpType) {
		case PowerUpTypes.AMMO:
			//add powerUpAmount to ammoCount;
			if (SendAmmoEvent != null) {
				//checks for subscribers
				SendAmmoEvent (powerUpAmount);
				//calls the event
			}
			break;
		case PowerUpTypes.HEALTH:
			if (SendHealthEvent != null) {
				//checks for subscribers
				SendHealthEvent (powerUpAmount);
				//calls the event
			}
			break;
		case PowerUpTypes.WEAPON:
			//turn on a weapon based on name
			break;
		case PowerUpTypes.TIME:
			//will add time to the the game
			break;
		case PowerUpTypes.MONEY:
			//gives you points or cash or credits
			break;
		}
		CollectObjects ();
		myPS.Emit(emissionRate);
	}

	void OnBecameInvisible () { // if outside the camera
		this.gameObject.SetActive(false); // turn of the script
	}
	
	public void OnTriggerEnter (Collider _tr) {//when triggered by a player
		CasePowerUpType ();		
	}
	
	public void CollectObjects () {
		powerUpAnim.SetBool("Collecting", true);
		boxCollider.enabled = false;//turns off the box collider component
		objectIsCollected = true;//checks if the powerUp is collected
	}

	public void DisablePowerUp ( ) {
		StartCoroutine(ResetPowerUp());
	}

	public IEnumerator ResetPowerUp ( ) {
		Debug.Log("RunDisable");
		powerUpAnim.SetBool("Collected", true);
		yield return new WaitForSeconds(0.2F);
		this.gameObject.SetActive(false);
		powerUpAnim.SetBool("Collected", false);
	}

}
