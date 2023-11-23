const deleteModal = document.getElementById('deleteModal')
if (deleteModal) {
  deleteModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    const recipient = button.getAttribute('idDel')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const modalTitle = deleteModal.querySelector('.modal-title')
    const modalBodyInput = deleteModal.querySelector('.modal-body input')

    modalBodyInput.value = recipient
  })
}


const updateModal = document.getElementById('updateModal')
if (updateModal) {
  updateModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    const idUpd = button.getAttribute('idUpd')
    const nombre = button.getAttribute('nombre')
    const apellido = button.getAttribute('apellido')
    const email = button.getAttribute('email')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const modalTitle = updateModal.querySelector('.modal-title')
    updateModal.getElementById("idUpd").value=idUpd
    updateModal.getElementById("nombre").value=nombre
    updateModal.getElementById("apellido").value=apellido
    updateModal.getElementById("email").value=email
  })
}