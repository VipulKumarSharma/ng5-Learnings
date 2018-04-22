import { Component } from '@angular/core';

@Component({
    selector    : 'app-server',
    templateUrl : './server.component.html',
    // template : `Write HTML code here`,
    styles    : [`
        p {
            font-size : 15px;
        }
        .online {
            color : white;
        }
    `]
})
export class ServerComponent {
    serverId = 78;
    serverStatus = 'offline';

    constructor() {
        this.serverStatus = Math.random() > 0.5 ? 'online' : 'offline';
    }

    getColor() {
        return this.serverStatus === 'online' ? 'green' : 'red';
    }

    getServerStatus() {
        return this.serverStatus;
    }
}
