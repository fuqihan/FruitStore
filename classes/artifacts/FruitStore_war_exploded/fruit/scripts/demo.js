/**
 * Created by an.han on 13-12-17.
 */
window.onload = function () {
    if (!document.getElementsByClassName) {
        document.getElementsByClassName = function (cls) {
            var ret = [];
            var els = document.getElementsByTagName('*');
            for (var i = 0, len = els.length; i < len; i++) {

                if (els[i].className.indexOf(cls + ' ') >= 0 || els[i].className.indexOf(' ' + cls + ' ') >= 0 || els[i].className.indexOf(' ' + cls) >= 0) {
                    ret.push(els[i]);
                }
            }
            return ret;
        }
    }

    var table = document.getElementById('cartTable'); // ���ﳵ���
    var selectInputs = document.getElementsByClassName('check'); // ���й�ѡ��
    var checkAllInputs = document.getElementsByClassName('check-all') // ȫѡ��
    var tr = table.children[1].rows; //��
    var selectedTotal = document.getElementById('selectedTotal'); //��ѡ��Ʒ��Ŀ����
    var priceTotal = document.getElementById('priceTotal'); //�ܼ�
    var deleteAll = document.getElementById('deleteAll'); // ɾ��ȫ����ť
    var selectedViewList = document.getElementById('selectedViewList'); //������ѡ��Ʒ�б�����
    var selected = document.getElementById('selected'); //��ѡ��Ʒ
    var foot = document.getElementById('foot');
    ;

    // �����������ܼ۸���ѡ����
    function getTotal() {
        var seleted = 0;
        var price = 0;
        var HTMLstr = '';
        for (var i = 0, len = tr.length; i < len; i++) {
            var y="choose"+i;
            var x="number"+i;
            var aaa=document.getElementById(y);
            var bbb=document.getElementById(x);
            if (tr[i].getElementsByTagName('input')[0].checked) {

                tr[i].className = 'on';
                seleted += parseInt(tr[i].getElementsByTagName('input')[1].value);
                price += parseFloat(tr[i].cells[4].innerHTML);
                HTMLstr += '<div><img src="' + tr[i].getElementsByTagName('img')[0].src + '"><span class="del" index="' + i + '">ȡ��ѡ��</span></div>'
            }
            else {
                aaa.name="sasassf";
                bbb.name="buyaode";
                tr[i].className = '';
            }
        }

        selectedTotal.innerHTML = seleted;
        priceTotal.innerHTML = price.toFixed(2);
        selectedViewList.innerHTML = HTMLstr;
        document.getElementById("priceAAAA").value = price.toFixed(2);

        if (seleted == 0) {
            foot.className = 'foot';
        }
    }

    // ���㵥�м۸�
    function getSubtotal(tr) {
        var cells = tr.cells;
        var price = cells[2]; //����
        var subtotal = cells[4]; //С��td
        var countInput = tr.getElementsByTagName('input')[1]; //��Ŀinput
        var span = tr.getElementsByTagName('span')[1]; //-��
        //д��HTML
        subtotal.innerHTML = (parseInt(countInput.value) * parseFloat(price.innerHTML)).toFixed(2);
           //�����Ŀֻ��һ������-��ȥ��
        if (countInput.value == 1) {
            span.innerHTML = '';
        } else {
            span.innerHTML = '-';
        }
    }

    // ���ѡ���
    for (var i = 0; i < selectInputs.length; i++) {
        selectInputs[i].onclick = function () {
            if (this.className.indexOf('check-all') >= 0) { //�����ȫѡ��������е�ѡ���ѡ��
                for (var j = 0; j < selectInputs.length; j++) {
                    selectInputs[j].checked = this.checked;
                }
            }
            if (!this.checked) { //ֻҪ��һ��δ��ѡ����ȡ��ȫѡ���ѡ��״̬
                for (var i = 0; i < checkAllInputs.length; i++) {
                    checkAllInputs[i].checked = false;
                }
            }
            getTotal();//ѡ������ܼ�
        }
    }

    // ��ʾ��ѡ��Ʒ����
    selected.onclick = function () {
        if (selectedTotal.innerHTML != 0) {
            foot.className = (foot.className == 'foot' ? 'foot show' : 'foot');
        }
    }

    //��ѡ��Ʒ�����е�ȡ��ѡ��ť
    selectedViewList.onclick = function (e) {
        var e = e || window.event;
        var el = e.srcElement;
        if (el.className == 'del') {
            var input = tr[el.getAttribute('index')].getElementsByTagName('input')[0]
            input.checked = false;
            input.onclick();
        }
    }

    //Ϊÿ��Ԫ������¼�
    for (var i = 0; i < tr.length; i++) {
        //������¼��󶨵�trԪ��
        tr[i].onclick = function (e) {
            var e = e || window.event;
            var el = e.target || e.srcElement; //ͨ���¼������target���Ի�ȡ����Ԫ��
            var cls = el.className; //����Ԫ�ص�class
            var countInout = this.getElementsByTagName('input')[1]; // ��Ŀinput
            var value = parseInt(countInout.value); //��Ŀ
            //ͨ���жϴ���Ԫ�ص�classȷ���û�������ĸ�Ԫ��
            switch (cls) {
                case 'add': //����˼Ӻ�
                    countInout.value = value + 1;
                    getSubtotal(this);
                    break;
                case 'reduce': //����˼���
                    if (value > 1) {
                        countInout.value = value - 1;
                        getSubtotal(this);
                    }
                    break;

            }
            getTotal();
        }
        // ����Ŀ������keyup�¼�
        tr[i].getElementsByTagName('input')[1].onkeyup = function () {
            var val = parseInt(this.value);
            if (isNaN(val) || val <= 0) {
                val = 1;
            }
            if (this.value != val) {
                this.value = val;
            }
            getSubtotal(this.parentNode.parentNode); //����С��
            getTotal(); //��������
        }
    }



    // Ĭ��ȫѡ
    checkAllInputs[0].checked = true;
    checkAllInputs[0].onclick();
}