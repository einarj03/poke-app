import $ from 'jquery';

const initAutoResizeTextArea = () => {
  console.log("init");
  $(document)
    .one('focus.autoExpand', 'textarea.autoExpand', function(){
        var savedValue = this.value;
        this.value = '';
        this.baseScrollHeight = this.scrollHeight;
        this.value = savedValue;
    })
    .on('input.autoExpand', 'textarea.autoExpand', function(){
        var rows;
        this.rows = 1;
        rows = Math.ceil((this.scrollHeight - this.baseScrollHeight) / 21) + 1;
        this.rows = rows;
    });
}

export { initAutoResizeTextArea };

