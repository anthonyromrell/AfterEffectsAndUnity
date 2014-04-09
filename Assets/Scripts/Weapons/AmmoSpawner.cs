using UnityEngine;
using System.Collections;

public class AmmoSpawner : MonoBehaviour {

	//public delegate AmmoSpawner AmmoSpawnerDelegate (AmmoSpawner _aS);//this will pass info about this to a weapon switch on pickup
	//public static event AmmoSpawnerDelegate AmmoSpawnerEvent;//adds subcribers of the weaponSwitch
	public bool IsPickedUp = false;//if the currentWeapon is set to be activated via pickUp

	public int ammoPower;//The ammount of damage the ammo can add to an enemy
	public string ammoTag;
	public float ammoAmount;
	public GameObject weaponArt;//the art used to display a weapon
	public AmmoControl[] myAmmo;//An array of gameObjects containing the the AmmoControl script
	public float ammoSpeed;//the speed the ammo moves after activation
	public float nextActivate = 2.0F;//the next time the ammo "fires" or is activated
	private float activationTime = 0.0F;//the current time that is a contiuously changing var adding the time to the nextActive var
	private int i = 0;// sets the iterator

	void Start () {
		ammoTag = this.gameObject.tag;
	}

	public void OnActivateAmmo (Vector3 _fireLocation, Vector3 _fireDirection, float _rotationAngle) {
		if(ammoAmount > 0) {
			if(i < myAmmo.Length) {// checks the iterator i against the count in the array
				if(Time.time > activationTime) {//checks if time is greater than the activation time var
					activationTime = Time.time + nextActivate;//adds the nextActive var to time
					myAmmo[i].AmmoArt.transform.localEulerAngles = new Vector3(0,_rotationAngle,0);
					myAmmo[i].ammoRigid.velocity = Vector3.zero;//stops all motion of a rigid body
					myAmmo[i].ammoGO.transform.position = _fireLocation;//resets the ammo gameobjects position
					myAmmo[i].ammoAnim.SetBool("Restart", true);//sets the animators restart custom perameter
					myAmmo[i].ammoGO.SetActive(true);
					myAmmo[i].ammoRigid.AddRelativeForce(_fireDirection*ammoSpeed, ForceMode.Impulse);//adds force to the ammos rigidBody
					i++;//iterates to the next ammo
					ammoAmount--;
				}
			} else if (i == myAmmo.Length) {//checks if the iterator is the same int as the myAmmo array
				i = 0;//resets the iterator 
			}
		}
	}	
}
