tippy('.copy-button', {
  content: "copied!",
  trigger: 'click',
  hideOnClick: false,
  onShow(instance) {
    setTimeout(() => {
      instance.hide();
    }, 700);
  }
});