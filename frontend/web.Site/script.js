// Função para processar a recarga de cartão
function recarregarCartao() {
    const numeroCartao = document.querySelector('.recarga input[type="text"]').value;
    const valorRecarga = parseFloat(document.querySelector('.recarga input[type="number"]').value);

    // ...

    document.querySelector('#btnRecarga').addEventListener('click', function (e) {
        e.preventDefault();
        recarregarCartao();
    });
}

// Função para processar a compra de cartões
function comprarCartoes() {
    const tipoCartao = document.querySelector('.compra select').value;
    const quantidade = parseInt(document.querySelector('.compra input[type="number"]').value);

    // ...

    document.querySelector('#btnCompra').addEventListener('click', function (e) {
        e.preventDefault();
        comprarCartoes();
    });
}
