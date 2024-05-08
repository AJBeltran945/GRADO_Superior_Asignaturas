
const rows = 10;
const cols = 10;
const totalMines = 20;

let board = [];
let mines = [];

function initializeBoard() {
    for (let i = 0; i < rows; i++) {
        board[i] = [];
        for (let j = 0; j < cols; j++) {
            board[i][j] = { isMine: false, revealed: false, count: 0 };
        }
    }
}

function plantMines() {
    let minesPlanted = 0;
    while (minesPlanted < totalMines) {
        const row = Math.floor(Math.random() * rows);
        const col = Math.floor(Math.random() * cols);
        if (!board[row][col].isMine) {
            board[row][col].isMine = true;
            minesPlanted++;
        }
    }
}

function countAdjacentMines(row, col) {
    const directions = [
        [-1, -1], [-1, 0], [-1, 1],
        [0, -1], [0, 1],
        [1, -1], [1, 0], [1, 1]
    ];

    let count = 0;
    directions.forEach(dir => {
        const newRow = row + dir[0];
        const newCol = col + dir[1];
        if (newRow >= 0 && newRow < rows && newCol >= 0 && newCol < cols && board[newRow][newCol].isMine) {
            count++;
        }
    });

    return count;
}

function updateBoard() {
    for (let i = 0; i < rows; i++) {
        for (let j = 0; j < cols; j++) {
            if (!board[i][j].isMine) {
                board[i][j].count = countAdjacentMines(i, j);
            }
        }
    }
}

function revealCell(row, col) {
    if (row < 0 || row >= rows || col < 0 || col >= cols || board[row][col].revealed) {
        return;
    }

    board[row][col].revealed = true;

    if (board[row][col].count === 0) {
        const directions = [
            [-1, 0], [1, 0], [0, -1], [0, 1],
            [-1, -1], [-1, 1], [1, -1], [1, 1]
        ];

        directions.forEach(dir => {
            revealCell(row + dir[0], col + dir[1]);
        });
    }
}

function renderBoard() {
    const boardElement = document.getElementById('board');
    boardElement.innerHTML = '';

    for (let i = 0; i < rows; i++) {
        for (let j = 0; j < cols; j++) {
            const cell = document.createElement('div');
            cell.className = 'cell';
            cell.textContent = board[i][j].revealed ? (board[i][j].isMine ? '💣' : (board[i][j].count > 0 ? board[i][j].count : '')) : '';
            cell.addEventListener('click', () => handleCellClick(i, j));
            boardElement.appendChild(cell);
        }
    }
}

function handleCellClick(row, col) {
    if (board[row][col].isMine) {
        alert('¡Boom! Has perdido');
        resetGame();
    } else {
        revealCell(row, col);
        renderBoard();
    }
}

function resetGame() {
    board = [];
    mines = [];
    initializeBoard();
    plantMines();
    updateBoard();
    renderBoard();
}

resetGame();
