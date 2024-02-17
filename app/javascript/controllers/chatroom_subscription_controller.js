import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    const users_chatroom = document.querySelector(".chatroom-users-pic-count");

    users_chatroom.addEventListener("click", (event) => {
    const users = document.querySelector(".container-users-chatroom");
    users.style.display = "block";
    });

    const close_btn = document.querySelector("#close-btn");
    close_btn.addEventListener("click", (event) => {
      const users = document.querySelector(".container-users-chatroom");
      console.log("close btn is clicked");
      users.style.display = "none";
    });


    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)

  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
