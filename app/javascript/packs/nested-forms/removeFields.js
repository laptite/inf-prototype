class removeFields {
	
	constructor() {
		this.links = document.querySelectorAll('.remove_fields');
		this.iterateLinks();
	}

	iterateLinks() {
		if(this.links.length === 0) return;
		this.links.forEach((link) => {
			link.addEventListener('click', (event) => {
				this.handleClick(link, event);
			})
		});
	}

	handleClick(link, event) {
		if(!link || !event) return;
		event.preventDefault();
		let fieldParent = link.closest('.nested-fields');
		let deleteField = fieldParent ? fieldParent.querySelector('input[type="hidden"]') : null
		if(deleteField) {
			deleteField.value = 1;
			fieldParent.style.display = 'none';
		}
	}
}

window.addEventListener('turbolinks:load', () => new removeFields() );