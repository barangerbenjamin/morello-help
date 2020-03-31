import { Controller } from "stimulus"
export default class extends Controller {
  static targets = ["submitLink"];

  clickSubmit() {
    const slt = this.submitLinkTarget
    slt.click();
  }
}