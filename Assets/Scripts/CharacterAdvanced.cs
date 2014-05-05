using UnityEngine;//
using System.Collections;//

public class CharacterAdvanced : MonoBehaviour {
	
	public CharacterController myController; //this is the charactor component.
	public Transform myArt;
	public Animator myAnim;
	private float hInput;
	private string animName = "Walk";
	public float speed = 0.5f;
	private bool flipped;
	private Vector3 moveDirection;
	public float jumpSpeed = 10;
	public float gravity = 20;
	
	void Update () 
	{
		myAnim.SetLayerWeight(1, 1);
		if(myController.isGrounded) {
			hInput = Input.GetAxis("Horizontal");
			moveDirection = new Vector3(hInput*speed, 0, 0);
					
			if(hInput <= -0.2f ) {
				myAnim.SetFloat(animName, hInput);
				if(!flipped) {
					myArt.Rotate(0,180,0);
					flipped = true;
				}
			}
			
			if(hInput >= 0.2f ) {
				myAnim.SetFloat(animName, hInput);
				if(flipped) {
					myArt.Rotate(0,180,0);
					flipped = false;
				}
			}

			if (Input.GetButton("Jump"))
				moveDirection.y = jumpSpeed;
		}
		moveDirection.y -= gravity * Time.deltaTime;
		myController.Move(moveDirection*Time.deltaTime);// move is a keyword (method really) that moves a charactor controller
	}
}