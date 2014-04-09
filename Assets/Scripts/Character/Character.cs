using UnityEngine;//
using System.Collections;//

public class Character : MonoBehaviour {
	
	public Transform characterArtController; // transform is a component of a game object that controls position, rotation and scale.
	public CharacterController controller; //this is the charactor component.
	public Animator cAnim; // animator is the mecanim animation component
	public float health;//Character Health
	public Transform healthBar;
	public float speed = 4.0F; // speed forward or backward
	public float jumpSpeed = 2.0F;// the speed at wich a character can jump
	public float gravity = 9.31F;//var for fake gravity
	
	public Vector3 moveDirection = Vector3.zero; //vercor3 is a location in 3D space. .zero  is (0,0,0) in that space.
	public bool direction = false;//if the character faces forward or backward

	void OnEnable () {
		PowerUp.SendHealthEvent += AddHealth;//Subcribes to the PowerUp script event
	}

	void AddHealth (float _h) {//Custom function
		if(health > 0) {//Checks health var
			health += _h;//adds health from the powerUpSender
			healthBar.localScale = new Vector3(health,1,1);//updates the healthBar
		}
	}

	void OnParticleCollision () {
		if(health > 0) {//checks health var
			health -= 0.1F;//subtracts a magic number from health
			healthBar.localScale = new Vector3(health,1,1);//updates the health bar
		} else {
			this.gameObject.SetActive(false);//turns off the character
		}
		if(health < 0.2F) {
			healthBar.gameObject.GetComponent<SpriteRenderer>().color = Color.red;//sets the healthBar Sprite to a danger color
		}
	}

	void Update() {//this runs every frame per second
		if ((controller.collisionFlags & CollisionFlags.Sides) != 0) {//determines if the character is "Grounded"
			if (Input.GetButton ("Jump")) { // jump is the spacebar
				moveDirection.z = jumpSpeed ; //sets the z value of the character tothe jumpspeed
			}
		}
		if(Input.GetKey(KeyCode.LeftArrow)) { // this is user input from a keyboard
			if(!direction) {//holds direction
				direction = true; //change character direction
				characterArtController.Rotate(0,180,0);//it rotates in z
			}
		} else if (Input.GetKey(KeyCode.RightArrow)) {
			if(direction) {//holds direction
				direction = false; //change character direction
				characterArtController.Rotate(0,180,0);//it rotates in z
			}
		}
		moveDirection.z -= gravity*Time.deltaTime; //fakes gravity. time.deltatime runs every frame in a second
		controller.Move(moveDirection*Time.deltaTime);// move is a keyword (method really) that moves a charactor controller
	}
}