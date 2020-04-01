import { Controller } from "stimulus";
import Swal from 'sweetalert2';
export default class extends Controller {
  static targets = ["submitLink"];

  clickSubmit() {
    const slt = this.submitLinkTarget
    slt.click();
  }

  confirm(event) {
    Swal.fire({
      title: `<p class="text-dark font-weight-bolder">All done?</p>`,
      html: `<p class="text-dark font-weight-bolder">You're about to confirm that you have helped ${this.submitLinkTarget.dataset.needuser}</p>`,
      type: 'warning',
      footer: `<p class="text-dark font-weight-bolder">You're the boss <i class="fas fa-crown""></i></p>`,
      confirmButtonColor: '#1A1A1A',
      confirmButtonText: 'Confirm   <i class="fas fa-check"></i>',
      showCancelButton: true
    }).then((result) => {
      if (result.value) {
        this.submitLinkTarget.click();
      }
    });
  }

  confirmHelp(event) {
    Swal.fire({
      title: `<p class="text-dark font-weight-bolder">Are you sure?</p>`,
      html: `<p class="text-dark font-weight-bolder">You're about to confirm your help to ${this.submitLinkTarget.dataset.needuser.toUpperCase()}</p>`,
      type: 'warning',
      footer: `<p class="text-dark font-weight-bolder">THANK YOU!</p>`,
      confirmButtonColor: '#1A1A1A',
      confirmButtonText: 'Confirm   <i class="fas fa-check"></i>',
      showCancelButton: true
    }).then((result) => {
      if (result.value) {
        this.submitLinkTarget.click();
      }
    });
  }
}