const btn = document.getElementById('add-bike-button');

const onClickAdd = (e) => console.log('clic', e);
const newBikeEvt = btn.addEventListener('click', onClickAdd);

export default newBikeEvt;
