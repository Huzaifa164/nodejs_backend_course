type User = {
    id: number;
    name: string;
    role: "user" | "super-admin"
}

const users: User[] = [
    {
        id: 1,
        name: "sangam",
        role: 'super-admin'
    },
    {
        id: 2,
        name: "john",
        role: 'user'
    },
    {
        id: 3,
        name: "roman",
        role: 'user'
    }
];

// callback is a function - this func u r passing to a diff function as a parameter
// callback(error, result) -> classic nodejs callback pattern

function findUserWithCallback(
    userId: number,
    callback: (error: Error | null, user?: User) => void
): void {
    setTimeout(() => {
        const user = users.find(currentUser => currentUser.id === userId);

        if(!user) {
            callback(new Error(`user with id ${userId} was not found`));
            return;
        }

        callback(null, user);
    }, 500);
}

// findUserWithCallback(3, (error, user) => {
//     if(error) {
//         console.log("callback error", error.message);
//         return;
//     }

//     console.log("callback result", user?.id, user?.name, user?.role);
// });

function findUserWithPromise(userId: number): Promise<User> {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            const user = users.find((currentUser) => currentUser.id === userId);

            if(!user) {
                reject(new Error(`user with ${userId} data was not found`));
                return;
            }

            resolve(user);
        }, 1000);
    });
}

// findUserWithPromise(100).then((user) => {
//     console.log("Promise result", user?.id, user?.name, user?.role);
// }).catch((error: Error) => {
//     console.log("Promise error", error.message);
// });

async function findUserWithAsyncAwait(userId: number): Promise<void> {
    try {
        const user = await findUserWithPromise(userId);
        console.log("async/await", user.name);
    } catch(error) {
        const message = error instanceof Error ? error.message : "Unknown error";
        console.log("async/await", message);
    }
}

findUserWithAsyncAwait(10);